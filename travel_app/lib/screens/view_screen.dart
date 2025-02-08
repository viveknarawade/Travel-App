import 'package:flutter/material.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://s3-alpha-sig.figma.com/img/26fd/4457/910bb8470ad0cde29d829d7783fd40de?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=O4S~OWjkMFIsbsabHzChSRWeL1GM9EkDsDA9Wk-KthqTrxKAX04VVvzI7x3d31krtDH7IOvHtYJyzBgFLeHaywrJqQhYDcOC~bNCXe4iy2h6xFHtueVpOCE39e~FnTTne7pN9~rjoXVk2AbkGNXYFzmhvOI7wSudCWBr595Bpl-KlDNcwHHwYc4CtfElmRQQKVWS-O1bbxLoX0I0tR4aSjl7Tm3YXfkSj7qoR1wQlfjSCWBZFmW9s-n~l5UuELxziYXxo0W5cUl1-zH665syvcLDIWRbX8WCrT0lPzGiKyPC7detYTgAGERjmj4io8ObIP6Yqwh22tztTaiKnu~nQA__",
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 50,
                left: 25,
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: IconButton(
                    onPressed: (Navigator.of(context).pop),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 55,
                left: 200,
                child: Text(
                  "View",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
              ),
              Positioned(
                top: 450,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 184,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(62, 62, 62, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://s3-alpha-sig.figma.com/img/84d9/5cba/8e6f78a1d1bead6a64d9d697c9268fe9?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Nt23aWC97kEAsSqZd07l-9BT~x9ZryCeiLUt1Ego9DL0T5ZZIMv3p3FMSn6Nv3QPTqA-3rVwKJ1owkn2xJRbwKgED2OXNUi-SKp300~KCfkVHqDe1QxlVs9AEKvfksCb6j0mYBFSUO6aI9epZvU3ZcBMwRHfwh7QAIR3MdiG9I5zmv9B05t2axPBTZSjuQ63IyPUcXqhfR~Lp5fZP7n~9E-nkBwbMo-WQNs~PQE3pTSlccLX4AwmCYfQ41tR9oOIE8~Nf7-axrQ5hKIS2GuxWl4y8XI9hh2imoe7P2xhhHdm9zC5fVB1tKaUgPVeq7lRx6xicmPF7cDQwM1emO9-Lg__",
                              height: 62,
                              width: 63,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "La-Hotel",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "2.09 mi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50),
                      width: 2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(62, 62, 62, 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 38),
                      height: 24,
                      width: 24,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(62, 62, 62, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 170,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 184,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(62, 62, 62, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "https://s3-alpha-sig.figma.com/img/84d9/5cba/8e6f78a1d1bead6a64d9d697c9268fe9?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Nt23aWC97kEAsSqZd07l-9BT~x9ZryCeiLUt1Ego9DL0T5ZZIMv3p3FMSn6Nv3QPTqA-3rVwKJ1owkn2xJRbwKgED2OXNUi-SKp300~KCfkVHqDe1QxlVs9AEKvfksCb6j0mYBFSUO6aI9epZvU3ZcBMwRHfwh7QAIR3MdiG9I5zmv9B05t2axPBTZSjuQ63IyPUcXqhfR~Lp5fZP7n~9E-nkBwbMo-WQNs~PQE3pTSlccLX4AwmCYfQ41tR9oOIE8~Nf7-axrQ5hKIS2GuxWl4y8XI9hh2imoe7P2xhhHdm9zC5fVB1tKaUgPVeq7lRx6xicmPF7cDQwM1emO9-Lg__",
                              height: 62,
                              width: 63,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "La-Hotel",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "2.09 mi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 40),
                      width: 2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(62, 62, 62, 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      height: 24,
                      width: 24,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(62, 62, 62, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: 25,
                  bottom: 40,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: 400,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(62, 62, 62, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Niladri Reservoir",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  "4.5",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Tekergat, Sunamgnj",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 70,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Image.asset("assets/avatar2.png"),
                                  Positioned(
                                    left: 10,
                                    child: Image.asset("assets/avatar3.png"),
                                  ),
                                  Positioned(
                                    left: 25,
                                    child: Image.asset("assets/avatar4.png"),
                                  ),
                                  Positioned(
                                    left: 40,
                                    child: Image.asset("assets/avatar5.png"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.punch_clock,
                              color: Colors.white,
                            ),
                            SizedBox(width: 6,),
                            Text(
                              "45 Minutes",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(13)),
                          child: Text(
                            "See on The Map",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
