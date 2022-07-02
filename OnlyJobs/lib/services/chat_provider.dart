import 'package:flutter/material.dart';

import '../model/chats.dart';

class ChatProvider with ChangeNotifier {
  final List<ChatModel> _items = [
    ChatModel(
        name: 'hilmy',
        message: 'Hello Hilmy',
        time: '7 March',
        profileUrl:
            'https://asset.kompas.com/crops/IjmmRwybxe-4tZrGRN5eMrq_po8=/0x32:700x382/750x500/data/photo/2020/01/09/5e16811892fc7.jpg'),
    ChatModel(
        name: 'riska',
        message: 'hello riska',
        time: '9 march',
        profileUrl:
            'https://img.okezone.com/content/2019/04/30/298/2049787/chef-arnold-berbagi-tips-membuat-makanan-menjadi-lebih-enak-Tz2kVDuNL2.jpg'),
    ChatModel(
        name: 'vita',
        message: 'hello vita',
        time: '10 March',
        profileUrl:
            'https://asset.kompas.com/crops/ployX7cQOqsYqJS2PYvUGv41CaI=/0x0:1000x667/750x500/data/photo/2017/06/22/163146320170622-042902-8311-chef.juna-.atau-.junior-.rorimpandey-.jpg'),
    ChatModel(
        name: 'niva',
        message: 'hello niva',
        time: '8 Desember',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'citra',
        message: 'hello citra',
        time: '9 August',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'adi',
        message: 'hello adi',
        time: '25 Jan',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'ashraf',
        message: 'hello ashraf',
        time: '23 July',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'niva',
        message: 'hello niva',
        time: '1 January',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'citra',
        message: 'hello citra',
        time: '19 November',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'adi',
        message: 'hello adi',
        time: '25 January',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'ashraf',
        message: 'hello ashraf',
        time: '14 Februari',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'niva',
        message: 'hello niva',
        time: '10 October',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'citra',
        message: 'hello citra',
        time: '4 Juny',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'adi',
        message: 'hello adi',
        time: '25 January',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
    ChatModel(
        name: 'ashraf',
        message: 'hello ashraf',
        time: '13 February',
        profileUrl:
            'https://img-o.okeinfo.net/content/2020/04/23/298/2203898/memilih-menu-sehat-dan-bergizi-saat-ramadhan-ala-chef-degan-khJm4HN40z.jpg'),
  ];

  List<ChatModel> get items {
    return [..._items];
  }
}
