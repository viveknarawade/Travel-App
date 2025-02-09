import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_app/widget/nav_bar_widget.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  DateTime _selectedDate = DateTime.now();

  /// Method to subtract one month
  void _subtractMonth() {
    setState(() {
      _selectedDate = DateTime(
        _selectedDate.year,
        _selectedDate.month - 1,
        _selectedDate.day,
      );
    });
  }

  /// Method to add one month
  void _addMonth() {
    setState(() {
      _selectedDate = DateTime(
        _selectedDate.year,
        _selectedDate.month + 1,
        _selectedDate.day,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(247, 247, 249, 1),
        title: const Text(
          "Schedule",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                size: 32,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            DateFormat("dd MMMM").format(_selectedDate),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              IconButton(
                                icon:
                                    const Icon(Icons.arrow_back_ios, size: 19),
                                onPressed: _subtractMonth,
                              ),
                              const SizedBox(width: 11),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios,
                                    size: 19),
                                onPressed: _addMonth,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      EasyDateTimeLine(
                        initialDate: _selectedDate,
                        onDateChange: (DateTime obj) {
                          setState(() {
                            _selectedDate = obj;
                          });
                        },
                        headerProps: const EasyHeaderProps(
                          showHeader: false,
                          monthPickerType: MonthPickerType.switcher,
                          dateFormatter: DateFormatter.fullDateDMY(),
                        ),
                        dayProps: const EasyDayProps(
                          dayStructure: DayStructure.dayStrDayNum,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _buildRow(),
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: _buildCard(),
                  ),

              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: NavBarWidget.showCustomAppbar(context, currentIndex: 1),
          ),
        ],
      ),
    );
  }

  _buildRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Row(
        children: [
          Text(
            "My Schedule",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Text(
            "View All",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(13, 110, 253, 1),
            ),
          ),
        ],
      ),
    );
  }

  _buildCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/f030/0adc/49024100a89c01bb1b2bacc523162e75?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=oCRLpnaHlL~B1vGi-j3pUFW8AIO6Mpn0cLiFqbZz8VxCdYSgpQ4hGlUHcKnhX~yxktQA9xIhrlGRfThaRarlMCovW2fV~lOVX7q0uZtXQAxy5SMQW~5469NhjR5cbdrtMy05K0JXZYDKDCw~gjsR7hluQqIjYTkda2JEQk4pl7TW66sdnNCP5Wdmk~IL4iPyuEuD~5ZM8Aa-QcDa3oaF~eySgK6HduySc5WBOfQnqlS5f7sC-2TPxl7FyLtngXm5x2p8nVIYgwx6o0tdgCh~KezNKw8WC8w5W7hmu09UArVGqdnd~rB9Wnn9aHKhMkleA4iSnfv~EripJjYYJr0psw__",
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.calendar_month_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text("26 January 2023")
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Niladri Reservoir",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                  ),
                  Text(
                    "Tekergat, Sunamgnj",
                    style: TextStyle(),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
