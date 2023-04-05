import 'package:workshop_perangkat_bergerak/models/item.dart';

class ItemSeeder {
  static List<Item> seedItems() {
    List<Item> items = [
      Item(
        name: 'Sawi Hijau',
        image: 'assets/images/sawihijau.jpeg',
        price: 50000,
        description: 'Sawi hijau atau yang juga dikenal dengan nama sawi sendok '
            'merupakan jenis sayuran hijau yang berasal dari keluarga Brassicaceae. '
            'Tanaman sawi hijau dapat tumbuh hingga mencapai ketinggian sekitar '
            '30-40 cm, dan memiliki daun hijau yang lebar dengan tepi bergelombang.',
      ),
      Item(
        name: 'Sawi Putih',
        image: 'assets/images/sawiputih.jpg',
        price: 75000,
        description: 'Sawi putih atau dikenal juga dengan nama kubis Cina '
            'merupakan jenis sayuran hijau yang berasal dari keluarga Brassicaceae, '
            'sama seperti sawi hijau. Sawi putih memiliki daun yang berwarna hijau '
            'keputihan dengan bentuk yang lebih membulat daripada sawi hijau.',
      ),
      Item(
        name: 'Kangkung',
        image: 'assets/images/kangkung.jpg',
        price: 100000,
        description: 'Kangkung atau water spinach merupakan jenis sayuran hijau '
            'yang berasal dari keluarga Amaranthaceae. Kangkung memiliki daun '
            'hijau dengan batang yang lunak dan terdapat di habitat air seperti '
            'sungai, kolam, atau sawah.',
      ),
      Item(
        name: 'Seledri',
        image: 'assets/images/seledri.jpeg',
        price: 100000,
        description: 'Seledri atau celery merupakan jenis sayuran hijau yang '
            'berasal dari keluarga Apiaceae. Seledri memiliki daun berwarna hijau '
            'tua dengan aroma yang kuat dan unik, serta sering digunakan dalam '
            'berbagai jenis masakan, mulai dari sup hingga hidangan salad.',
      ),
      Item(
        name: 'Timun',
        image: 'assets/images/timun.jpg',
        price: 100000,
        description: 'Timun atau cucumber merupakan jenis sayuran hijau yang '
            'berasal dari keluarga Cucurbitaceae. Timun memiliki bentuk yang '
            'silindris dan berwarna hijau dengan kulit yang kasar. Sayuran ini '
            'sering digunakan dalam berbagai jenis masakan, seperti hidangan '
            'salad, sup, dan acar.',
      ),
      Item(
        name: 'Terong',
        image: 'assets/images/terong.jpg',
        price: 100000,
        description: 'Terong atau eggplant merupakan jenis sayuran hijau yang '
            'berasal dari keluarga Solanaceae. Terong memiliki bentuk yang bulat '
            'atau oval, dan berwarna ungu atau ungu kehitaman dengan tekstur yang '
            'lembut dan daging yang empuk. Sayuran ini sering digunakan dalam '
            'berbagai jenis masakan, seperti tumis sayuran, sup, dan hidangan '
            'pembuka seperti caponata.',
      ),
      Item(
        name: 'Bayam',
        image: 'assets/images/bayam.jpg',
        price: 100000,
        description: 'Bayam atau spinach merupakan jenis sayuran hijau yang '
            'berasal dari keluarga Amaranthaceae. Bayam memiliki daun hijau '
            'dengan tekstur lembut dan sedikit berair. Sayuran ini sering digunakan '
            'dalam berbagai jenis masakan, seperti tumis sayuran, sup, hidangan '
            'pasta, dan smoothie.',
      ),
      Item(
        name: 'Buncis',
        image: 'assets/images/buncis.jpg',
        price: 100000,
        description: 'Buncis atau green beans merupakan jenis sayuran hijau yang '
            'berasal dari keluarga Fabaceae. Buncis memiliki bentuk panjang dan '
            'berwarna hijau, serta memiliki tekstur yang renyah dan daging yang '
            'empuk. Sayuran ini sering digunakan dalam berbagai jenis masakan, s'
            'eperti tumis sayuran, sup, hidangan panggang, dan salad.',
      ),
      Item(
        name: 'Wortel',
        image: 'assets/images/wortel.jpg',
        price: 100000,
        description: 'Wortel atau carrot merupakan jenis sayuran hijau yang '
            'berasal dari keluarga Apiaceae. Wortel memiliki bentuk yang silindris'
            ' dan berwarna oranye dengan daging yang renyah dan manis. Sayuran ini'
            ' sering digunakan dalam berbagai jenis masakan, seperti tumis sayuran'
            ', sup, hidangan panggang, dan salad.',
      ),
      Item(
        name: 'Tomat',
        image: 'assets/images/tomat.jpeg',
        price: 100000,
        description: 'Tomat atau tomato merupakan jenis buah yang sering digunakan'
            ' sebagai sayuran dalam berbagai jenis masakan, seperti tumis sayuran,'
            ' sup, hidangan panggang, dan salad. Tomat memiliki bentuk bulat atau '
            'oval dengan warna merah atau kuning, serta memiliki tekstur yang '
            'lembut dengan biji di dalamnya.',
      ),
      Item(
        name: 'Kubis',
        image: 'assets/images/kubis.jpg',
        price: 100000,
        description: 'Kubis atau cabbage merupakan jenis sayuran hijau yang berasal'
            ' dari keluarga Brassicaceae. Kubis memiliki bentuk bulat atau oval '
            'dengan warna hijau, serta memiliki tekstur yang renyah dengan daun '
            'yang rapat. Sayuran ini sering digunakan dalam berbagai jenis masakan,'
            ' seperti tumis sayuran, sup, hidangan panggang, dan salad.',
      ),
      Item(
        name: 'Brokoli',
        image: 'assets/images/brokoli.jpg',
        price: 100000,
        description: 'Brokoli atau broccoli merupakan jenis sayuran hijau yang '
            'berasal dari keluarga Brassicaceae. Brokoli memiliki bentuk yang '
            'menyerupai pohon mini dengan warna hijau atau ungu, serta memiliki '
            'tekstur yang renyah dengan kepala bunga yang padat. Sayuran ini sering'
            ' digunakan dalam berbagai jenis masakan, seperti tumis sayuran, sup, '
            'hidangan panggang, dan salad.',
      ),
      Item(
        name: 'Pare',
        image: 'assets/images/pare.png',
        price: 100000,
        description: 'Pare atau bitter melon merupakan jenis buah-buahan yang '
            'sering digunakan sebagai sayuran dalam masakan, terutama di Asia dan '
            'Afrika. Pare memiliki bentuk lonjong dengan kulit hijau dan bercak-'
            'bercak putih. Buah ini memiliki tekstur renyah dan dagingnya berbiji.',
      ),
      Item(
        name: 'Tauge',
        image: 'assets/images/tauge.jpg',
        price: 100000,
        description: 'Tauge atau taoge merupakan jenis sayuran yang berasal dari '
            'kacang hijau yang tumbuh dalam kondisi lembab. Tauge sering digunakan'
            ' dalam masakan, seperti mi goreng, lumpia, sup, dan nasi goreng.',
      ),
    ];
    return items;
  }
}