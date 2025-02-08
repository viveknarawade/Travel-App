import 'package:flutter/material.dart';
import 'package:travel_app/widget/search_bar_widget.dart';

import '../widget/nav_bar_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(247, 247, 249, 1),
        title: const Text(
          "Search",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black87,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              SearchBarWidget.searchBar(
                context: context,
                controller: _searchController,
                hintText: "Search for destinations",
                suffixIcon: Icons.search,
                prefixIcon: Icons.location_on_outlined,
              ),

              const SizedBox(height: 24),

              // Search Places Title
              const Text(
                "Search Places",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 25),

              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: 5, // Increased for more items
                  itemBuilder: (context, index) {
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image
                          Expanded(
                            flex: 3,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(16),
                              ),
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/67e5/0f42/d57cbe797a876efab5c4f2e69fe2924f?Expires=1739750400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MsFfeEjwZhbZaont2vaSSZ2A5vP0cOPmQZfPG3SBsf18apsS4JnEAGlJ6zhwLNY6QZywxyr57NyyxCqayBlKTW9Hids5otJFkh2IbaBGc1~zytQLung2NuqiYkL5KIVZVeADV0CNp3fsdIcWAxYx2DOIFEnL-EBS~PRvioaBbgQbeRuGKi8bDFMUTwRO9FNe-wlSEQEELMCdq1-xzRW-POFL2C8ayzx1guFM2be7rrdrO4~4CcSOfkQgMowqYbs34mqkJncV9a8quxHXi6Po4gdVe9Ja5ziyNJgD90A~uaurDXyrE64k2XLBCBvPoAbzn~t~WEvHfeiN7DaAVpuz1w__",
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),

                          // Details
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Niladri Reservoir",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined,
                                          size: 16, color: Colors.grey[600]),
                                      const SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          "Tekergat, Sunamgnj",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey[600],
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$300/person",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
           
           
           
            NavBarWidget(),
            ],
          ),
        ),
      ),

    );
  }
}
