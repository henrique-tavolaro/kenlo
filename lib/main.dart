import 'dart:io';

void main() {
  List<String> urlList = ['kenlo.com.br',
    'www.kenlo.com.br',
    'www.kenlo.com.br/',
    'http://www.kenlo.com.br',
  ];

  List<String> newlist = urlList.map((url) {
    if (!url.startsWith('http://') && !url.startsWith('www.')) {
      return url = 'https://www.$url';
    }

    if(!url.startsWith('http://')){
      return url = 'https://$url';
    }

    if(url.startsWith('http://')){
      return url = url.replaceRange(0, 7, 'https://');
    }

    if (url.endsWith('/')) {
      return url = url.substring(0, url.length - 1);
    }

    return url;
  }).toList();

  print(newlist);
}


