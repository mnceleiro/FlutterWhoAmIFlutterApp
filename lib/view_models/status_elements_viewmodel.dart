import 'package:soy_rico/model/entities/status.dart';

class StatusViewModel {
  // final BuildContext context;
  List<Status>? statusList;
  StatusType currentStatus = StatusType.none;

  // List<DrawerElement>? bottomElements;
  StatusViewModel();

  /// Create the different statuses for the app.
  getAllStatus() {
    statusList ??= <Status>[
      Status(
        type: StatusType.none,
        name: "Who Am I?",
        description: "Choose an option in the left side :-)",
      ),
      Status(
          type: StatusType.rich,
          name: "I'm rich",
          description: "999€ is... nothing4me",
          imagePath: 'images/icon_rich.png'
      ),
      Status(
          type: StatusType.poor,
          name: "I'm poor",
          description: "All my money is honest.",
          imagePath: 'images/icon_poor.png'
      ),
      Status(
          type: StatusType.professor,
          name: "I'm a professor",
          description: "I'm just a professor!",
          imagePath: 'images/image_professor.webp'
      ),
      Status(
          type: StatusType.about,
          name: "About me",
          description: "",
      ),
    ];

    return statusList;
  }

  /// Get status info by type
  Status getCurrentStatusInfo() =>
      getAllStatus().firstWhere((e) => e.type == currentStatus);

// getBottomDrawerElements() {
//   bottomElements ??= <DrawerElement>[
//     DrawerElement(name: "Sobre mi", description: "Who Am I?", callback: () {
//
//     }),
//   ];
//
//   return bottomElements;
// }
}
