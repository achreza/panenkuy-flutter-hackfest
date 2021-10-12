import 'package:flutter/material.dart';
import 'package:flutter_panenkuy/ui/chat_page.dart';
import 'package:flutter_panenkuy/ui/detail_chat.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("29D890"),
        automaticallyImplyLeading: false,
        title: Text(
          'All Chats',
          style:
              TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.w700),
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: HexColor("ffffff"),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // await Navigator.push(
          //   context,
          //   PageTransition(
          //     type: PageTransitionType.bottomToTop,
          //     duration: Duration(milliseconds: 250),
          //     reverseDuration: Duration(milliseconds: 250),
          //     child: MyFriendsWidget(),
          //   ),
          // );
        },
        backgroundColor: HexColor("29D890"),
        elevation: 8,
        child: Icon(
          Icons.add_comment_rounded,
          color: HexColor("ffffff"),
          size: 30,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPageDetail()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 12, top: 7),
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          child: Icon(
                            Icons.person,
                            size: 30,
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 280,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nama",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14),
                                ),
                                Text(
                                  "8:50 AM",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 280,
                            child: Flexible(
                              child: Text(
                                "FAFIFUFAFIFAUFAIFUAFIAFIAFAAAAAAAAAAA",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            Divider()

            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
            //   child: StreamBuilder<List<ChatsRecord>>(
            //     stream: queryChatsRecord(
            //       queryBuilder: (chatsRecord) => chatsRecord
            //           .where('users', arrayContains: currentUserReference)
            //           .orderBy('last_message_time', descending: true),
            //     ),
            //     builder: (context, snapshot) {
            //       // Customize what your widget looks like when it's loading.
            //       if (!snapshot.hasData) {
            //         return Center(
            //           child: SizedBox(
            //             width: 50,
            //             height: 50,
            //             child: CircularProgressIndicator(
            //               color: FlutterFlowTheme.primaryColor,
            //             ),
            //           ),
            //         );
            //       }
            //       List<ChatsRecord> listViewChatsRecordList = snapshot.data;
            //       if (listViewChatsRecordList.isEmpty) {
            //         return Image.asset(
            //           'assets/images/chatsEmpty.png',
            //           width: MediaQuery.of(context).size.width,
            //           height: 450,
            //         );
            //       }
            //       return InkWell(
            //         onTap: () async {
            //           await Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => ChatDetailsWidget(),
            //             ),
            //           );
            //         },
            //         child: ListView.builder(
            //           padding: EdgeInsets.zero,
            //           shrinkWrap: true,
            //           scrollDirection: Axis.vertical,
            //           itemCount: listViewChatsRecordList.length,
            //           itemBuilder: (context, listViewIndex) {
            //             final listViewChatsRecord =
            //                 listViewChatsRecordList[listViewIndex];
            //             return FutureBuilder<UsersRecord>(
            //               future: () async {
            //                 final chatUserRef = FFChatManager.instance
            //                     .getChatUserRef(currentUserReference,
            //                         listViewChatsRecord);
            //                 return UsersRecord.getDocument(chatUserRef)
            //                     .first;
            //               }(),
            //               builder: (context, snapshot) {
            //                 final chatUser = snapshot.data;
            //                 return FFChatPreview(
            //                   onTap: chatUser != null
            //                       ? () => Navigator.push(
            //                             context,
            //                             MaterialPageRoute(
            //                               builder: (context) =>
            //                                   ChatDetailsWidget(
            //                                 chatUser: chatUser,
            //                               ),
            //                             ),
            //                           )
            //                       : null,
            //                   lastChatText: listViewChatsRecord.lastMessage,
            //                   lastChatTime:
            //                       listViewChatsRecord.lastMessageTime,
            //                   seen: listViewChatsRecord.lastMessageSeenBy
            //                       .contains(currentUserReference),
            //                   userName: chatUser?.displayName ?? '',
            //                   userProfilePic: chatUser?.photoUrl ?? '',
            //                   color: FlutterFlowTheme.dark900,
            //                   unreadColor: FlutterFlowTheme.tertiary,
            //                   titleTextStyle: GoogleFonts.getFont(
            //                     'Lexend Deca',
            //                     color: FlutterFlowTheme.tertiaryColor,
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 14,
            //                   ),
            //                   dateTextStyle: GoogleFonts.getFont(
            //                     'Lexend Deca',
            //                     color: FlutterFlowTheme.grayIcon,
            //                     fontWeight: FontWeight.normal,
            //                     fontSize: 14,
            //                   ),
            //                   previewTextStyle: GoogleFonts.getFont(
            //                     'Lexend Deca',
            //                     color: FlutterFlowTheme.grayIcon,
            //                     fontWeight: FontWeight.normal,
            //                     fontSize: 14,
            //                   ),
            //                   contentPadding:
            //                       EdgeInsetsDirectional.fromSTEB(
            //                           8, 3, 8, 3),
            //                   borderRadius: BorderRadius.circular(0),
            //                 );
            //               },
            //             );
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
