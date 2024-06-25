import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // create a bloc and provide it to the HomeView
  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: textTheme.bodyMedium,
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              'Arjun R.',
              style: textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: colorScheme.secondary,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  'Hazaribagh',
                  style: textTheme.bodySmall!.copyWith(
                    color: colorScheme.secondary,
                  ),
                ),
                Icon(
                  Icons.expand_more,
                  color: colorScheme.secondary,
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
            ),
          ),
          SizedBox(
            width: 8.0,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(64.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search for doctors...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Container(
                    margin: EdgeInsets.all(4.0),
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        color: colorScheme.onSurfaceVariant,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: colorScheme.surfaceContainerHighest,
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
