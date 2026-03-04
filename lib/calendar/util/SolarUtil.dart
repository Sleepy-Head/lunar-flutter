import '../Solar.dart';

/// 阳历工具
/// @author 6tail
class SolarUtil {
  /// 星期
  static const List<String> WEEK = ['日', '一', '二', '三', '四', '五', '六'];

  /// 每月天数
  static const List<int> DAYS_OF_MONTH = [
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ];

  /// 星座
  static const List<String> XING_ZUO = [
    '白羊',
    '金牛',
    '双子',
    '巨蟹',
    '狮子',
    '处女',
    '天秤',
    '天蝎',
    '射手',
    '摩羯',
    '水瓶',
    '双鱼'
  ];

  /// 日期对应的节日
  static const Map<String, String> FESTIVAL = {
    '1-1': '元旦节',
    '2-14': '情人节',
    '3-8': '妇女节',
    '3-12': '植树节',
    '3-15': '消费者权益日',
    '4-1': '愚人节',
    '5-1': '劳动节',
    '5-4': '青年节',
    '6-1': '儿童节',
    '7-1': '建党节',
    '8-1': '建军节',
    '9-10': '教师节',
    '10-1': '国庆节',
    '10-31': '万圣节前夜',
    '11-1': '万圣节',
    '12-24': '平安夜',
    '12-25': '圣诞节'
  };

  //TODO: TESTING INDOFESTIVAL
  static const Map<String, String> INDO_FIX_HOLIDAY_FESTIVAL = {
    '1-1': 'Tahun Baru Masehi',
    '5-1': 'Hari Buruh Internasional',
    '6-1': 'Hari Lahir Pancasila',
    '8-17': 'Hari Proklamasi Kemerdekaan Republik Indonesia',
    '12-25': 'Kelahiran Yesus Kristus (Natal)'
  };

  //TODO: TESTING INDOFESTIVAL
  static const Map<String, String> INDO_FIX_NON_HOLIDAY_FESTIVAL = {
    '2-9': 'Hari Pers Nasional',
    '2-14': 'Hari Kasih Sayang',
    '3-14': 'Hari Pi',
    '4-5': 'Hari Pemuda Islam',
    '4-21': 'Hari R.A. Kartini',
    '5-2': 'Hari Pendidikan Nasional',
    '5-20': 'Hari Kebangkitan Nasional',
    '5-21': 'Hari Reformasi Nasional',
    '6-22': 'Hari Ulang Tahun Kota Jakarta',
    '7-23': 'Hari Anak Nasional',
    '8-10': 'Hari Veteran Nasional',
    '9-17': 'Hari Perhubungan Nasional',
    '10-5': 'Hari Tentara Nasional Indonesia',
    '10-27': 'Hari Listrik Nasional',
    '10-28': 'Hari Sumpah Pemuda',
    '11-10': 'Hari Pahlawan Nasional',
    '11-25': 'Hari Guru Nasional',
    '12-9': 'Hari Antikorupsi Sedunia',
    '12-22': 'Hari Ibu Nasional',
  };

  /// 几月第几个星期几对应的节日
  static const Map<String, String> WEEK_FESTIVAL = {
    '3-0-1': '全国中小学生安全教育日',
    '5-2-0': '母亲节',
    '5-3-0': '全国助残日',
    '6-3-0': '父亲节',
    '9-3-6': '全民国防教育日',
    '10-1-1': '世界住房日',
    '11-4-4': '感恩节'
  };

  /// 日期对应的非正式节日
  static const Map<String, List<String>> OTHER_FESTIVAL = {
    '1-8': ['周恩来逝世纪念日'],
    '1-10': ['中国人民警察节'],
    '1-14': ['日记情人节'],
    '1-21': ['列宁逝世纪念日'],
    '1-26': ['国际海关日'],
    '1-27': ['国际大屠杀纪念日'],
    '2-2': ['世界湿地日'],
    '2-4': ['世界抗癌日'],
    '2-7': ['京汉铁路罢工纪念日'],
    '2-10': ['国际气象节'],
    '2-19': ['邓小平逝世纪念日'],
    '2-20': ['世界社会公正日'],
    '2-21': ['国际母语日'],
    '2-24': ['第三世界青年日'],
    '3-1': ['国际海豹日'],
    '3-3': ['世界野生动植物日', '全国爱耳日'],
    '3-5': ['周恩来诞辰纪念日', '中国青年志愿者服务日'],
    '3-6': ['世界青光眼日'],
    '3-7': ['女生节'],
    '3-12': ['孙中山逝世纪念日'],
    '3-14': ['马克思逝世纪念日', '白色情人节'],
    '3-17': ['国际航海日'],
    '3-18': ['全国科技人才活动日', '全国爱肝日'],
    '3-20': ['国际幸福日'],
    '3-21': ['世界森林日', '世界睡眠日', '国际消除种族歧视日'],
    '3-22': ['世界水日'],
    '3-23': ['世界气象日'],
    '3-24': ['世界防治结核病日'],
    '3-29': ['中国黄花岗七十二烈士殉难纪念日'],
    '4-2': ['国际儿童图书日', '世界自闭症日'],
    '4-4': ['国际地雷行动日'],
    '4-7': ['世界卫生日'],
    '4-8': ['国际珍稀动物保护日'],
    '4-12': ['世界航天日'],
    '4-14': ['黑色情人节'],
    '4-15': ['全民国家安全教育日'],
    '4-22': ['世界地球日', '列宁诞辰纪念日'],
    '4-23': ['世界读书日'],
    '4-24': ['中国航天日'],
    '4-25': ['儿童预防接种宣传日'],
    '4-26': ['世界知识产权日', '全国疟疾日'],
    '4-28': ['世界安全生产与健康日'],
    '4-30': ['全国交通安全反思日'],
    '5-2': ['世界金枪鱼日'],
    '5-3': ['世界新闻自由日'],
    '5-5': ['马克思诞辰纪念日'],
    '5-8': ['世界红十字日'],
    '5-11': ['世界肥胖日'],
    '5-12': ['全国防灾减灾日', '护士节'],
    '5-14': ['玫瑰情人节'],
    '5-15': ['国际家庭日'],
    '5-19': ['中国旅游日'],
    '5-20': ['网络情人节'],
    '5-22': ['国际生物多样性日'],
    '5-25': ['525心理健康节'],
    '5-27': ['上海解放日'],
    '5-29': ['国际维和人员日'],
    '5-30': ['中国五卅运动纪念日'],
    '5-31': ['世界无烟日'],
    '6-3': ['世界自行车日'],
    '6-5': ['世界环境日'],
    '6-6': ['全国爱眼日'],
    '6-8': ['世界海洋日'],
    '6-11': ['中国人口日'],
    '6-14': ['世界献血日', '亲亲情人节'],
    '6-17': ['世界防治荒漠化与干旱日'],
    '6-20': ['世界难民日'],
    '6-21': ['国际瑜伽日'],
    '6-25': ['全国土地日'],
    '6-26': ['国际禁毒日', '联合国宪章日'],
    '7-1': ['香港回归纪念日'],
    '7-6': ['国际接吻日', '朱德逝世纪念日'],
    '7-7': ['七七事变纪念日'],
    '7-11': ['世界人口日', '中国航海日'],
    '7-14': ['银色情人节'],
    '7-18': ['曼德拉国际日'],
    '7-30': ['国际友谊日'],
    '8-3': ['男人节'],
    '8-5': ['恩格斯逝世纪念日'],
    '8-6': ['国际电影节'],
    '8-8': ['全民健身日'],
    '8-9': ['国际土著人日'],
    '8-12': ['国际青年节'],
    '8-14': ['绿色情人节'],
    '8-19': ['世界人道主义日', '中国医师节'],
    '8-22': ['邓小平诞辰纪念日'],
    '8-29': ['全国测绘法宣传日'],
    '9-3': ['中国抗日战争胜利纪念日'],
    '9-5': ['中华慈善日'],
    '9-8': ['世界扫盲日'],
    '9-9': ['毛泽东逝世纪念日', '全国拒绝酒驾日'],
    '9-14': ['世界清洁地球日', '相片情人节'],
    '9-15': ['国际民主日'],
    '9-16': ['国际臭氧层保护日'],
    '9-17': ['世界骑行日'],
    '9-18': ['九一八事变纪念日'],
    '9-20': ['全国爱牙日'],
    '9-21': ['国际和平日'],
    '9-27': ['世界旅游日'],
    '9-30': ['中国烈士纪念日'],
    '10-1': ['国际老年人日'],
    '10-2': ['国际非暴力日'],
    '10-4': ['世界动物日'],
    '10-11': ['国际女童日'],
    '10-10': ['辛亥革命纪念日'],
    '10-13': ['国际减轻自然灾害日', '中国少年先锋队诞辰日'],
    '10-14': ['葡萄酒情人节'],
    '10-16': ['世界粮食日'],
    '10-17': ['全国扶贫日'],
    '10-20': ['世界统计日'],
    '10-24': ['世界发展信息日', '程序员节'],
    '10-25': ['抗美援朝纪念日'],
    '11-5': ['世界海啸日'],
    '11-8': ['记者节'],
    '11-9': ['全国消防日'],
    '11-11': ['光棍节'],
    '11-12': ['孙中山诞辰纪念日'],
    '11-14': ['电影情人节'],
    '11-16': ['国际宽容日'],
    '11-17': ['国际大学生节'],
    '11-19': ['世界厕所日'],
    '11-28': ['恩格斯诞辰纪念日'],
    '11-29': ['国际声援巴勒斯坦人民日'],
    '12-1': ['世界艾滋病日'],
    '12-2': ['全国交通安全日'],
    '12-3': ['世界残疾人日'],
    '12-4': ['全国法制宣传日'],
    '12-5': ['世界弱能人士日', '国际志愿人员日'],
    '12-7': ['国际民航日'],
    '12-9': ['世界足球日', '国际反腐败日'],
    '12-10': ['世界人权日'],
    '12-11': ['国际山岳日'],
    '12-12': ['西安事变纪念日'],
    '12-13': ['国家公祭日'],
    '12-14': ['拥抱情人节'],
    '12-18': ['国际移徙者日'],
    '12-26': ['毛泽东诞辰纪念日']
  };

  /// 是否闰年
  /// @param year 年
  /// @return true/false 闰年/非闰年
  static bool isLeapYear(int year) {
    if (year < 1600) {
      return year % 4 == 0;
    }
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  /// 获取某年某月有多少天
  ///
  /// @param year  年
  /// @param month 月
  /// @return 天数
  static int getDaysOfMonth(int year, int month) {
    if (1582 == year && 10 == month) {
      return 21;
    }
    int m = month - 1;
    int d = DAYS_OF_MONTH[m];
    //公历闰年2月多一天
    if (m == 1 && isLeapYear(year)) {
      d++;
    }
    return d;
  }

  /// 获取某年有多少天（平年365天，闰年366天）
  ///
  /// @param year 年
  /// @return 天数
  static int getDaysOfYear(int year) {
    if (1582 == year) {
      return 355;
    }
    return isLeapYear(year) ? 366 : 365;
  }

  /// 获取某天为当年的第几天
  ///
  /// @param year 年
  /// @param month 月
  /// @param day 日
  /// @return 第几天
  static int getDaysInYear(int year, int month, int day) {
    int days = 0;
    for (int i = 1; i < month; i++) {
      days += getDaysOfMonth(year, i);
    }
    int d = day;
    if (1582 == year && 10 == month) {
      if (day >= 15) {
        d -= 10;
      } else if (day > 4) {
        throw 'wrong solar year $year month $month day $day';
      }
    }
    days += d;
    return days;
  }

  /// 获取某年某月有多少周
  ///
  /// @param year  年
  /// @param month 月
  /// @param start 星期几作为一周的开始，1234560分别代表星期一至星期天
  /// @return 周数
  static int getWeeksOfMonth(int year, int month, int start) {
    return ((getDaysOfMonth(year, month) +
                Solar.fromYmd(year, month, 1).getWeek() -
                start) *
            1.0 /
            WEEK.length)
        .ceil();
  }

  /// 获取两个日期之间相差的天数（如果日期a比日期b小，天数为正，如果日期a比日期b大，天数为负）
  ///
  /// @param ay 年a
  /// @param am 月a
  /// @param ad 日a
  /// @param by 年b
  /// @param bm 月b
  /// @param bd 日b
  /// @return 天数
  static int getDaysBetween(int ay, int am, int ad, int by, int bm, int bd) {
    int n;
    int days;
    int i;
    if (ay == by) {
      n = getDaysInYear(by, bm, bd) - getDaysInYear(ay, am, ad);
    } else if (ay > by) {
      days = getDaysOfYear(by) - getDaysInYear(by, bm, bd);
      for (i = by + 1; i < ay; i++) {
        days += getDaysOfYear(i);
      }
      days += getDaysInYear(ay, am, ad);
      n = -days;
    } else {
      days = getDaysOfYear(ay) - getDaysInYear(ay, am, ad);
      for (i = ay + 1; i < by; i++) {
        days += getDaysOfYear(i);
      }
      days += getDaysInYear(by, bm, bd);
      n = days;
    }
    return n;
  }

// =============================
// 2025
  static const Map<String, List<String>> twentyFive_Holiday_Events_NoText = {
    '2025-1-17': ['Tahun Baru Imlek'],
    '2025-4-18': ['Wafat Yesus Kristus (Jumat Agung)'],
    '2025-4-20': ['Kebangkitan Yesus Kristus (Paskah)'],
    '2025-5-29': ['Kenaikan Yesus Kristus'],
  };

  static const Map<String, List<String>> twentyFive_Holiday_Events = {
    '2025-1-27': ['Isra Mi\'raj Nabi Muhammad SAW'],
    '2025-3-29': ['Hari Suci Nyepi Tahun Baru Saka'],
    '2025-3-31': ['Hari Raya Idul Fitri'],
    '2025-4-1': ['Hari Raya Idul Fitri'],
    '2025-5-12': ['Hari Raya Waisak'],
    '2025-6-6': ['Hari Raya Idul Adha'],
    '2025-6-27': ['Tahun Baru Islam'],
    '2025-9-5': ['Maulid Nabi Muhammad SAW'],
  };

  static const Map<String, List<String>> twentyFive_ExtraHoliday_Events = {
    '2025-1-28': ['Cuti Tahun Baru Imlek'],
    '2025-3-28': ['Cuti Hari Suci Nyepi Tahun Baru Saka'],
    '2025-4-2': ['Cuti Hari Raya Idul Fitri'],
    '2025-4-3': ['Cuti Hari Raya Idul Fitri'],
    '2025-4-4': ['Cuti Hari Raya Idul Fitri'],
    '2025-4-7': ['Cuti Hari Raya Idul Fitri'],
    '2025-5-13': ['Cuti Hari Raya Waisak'],
    '2025-5-30': ['Cuti Kenaikan Yesus Kristus'],
    '2025-6-9': ['Cuti Idul Adha'],
    '2025-8-18': ['Cuti Hari Proklamasi Kemerdekaan Republik Indonesia'],
    '2025-12-26': ['Cuti Kelahiran Yesus Kristus (Natal)'],
  };

//2026
  static const Map<String, List<String>> twentySix_Holiday_Events_NoText = {
    '2026-2-17': ['Tahun Baru Imlek'],
    '2026-4-3': ['Wafat Yesus Kristus (Jumat Agung)'],
    '2026-4-5': ['Kebangkitan Yesus Kristus (Paskah)'],
    '2026-5-14': ['Kenaikan Yesus Kristus'],
  };

  static const Map<String, List<String>> twentySix_Holiday_Events = {
    '2026-1-16': ['Isra Mi\'raj Nabi Muhammad SAW'],
    '2026-3-19': ['Hari Suci Nyepi Tahun Baru Saka'],
    '2026-3-21': ['Hari Raya Idul Fitri'],
    '2026-3-22': ['Hari Raya Idul Fitri'],
    '2026-5-27': ['Hari Raya Idul Adha'],
    '2026-5-31': ['Hari Raya Waisak'],
    '2026-6-16': ['Tahun Baru Islam'],
    '2026-8-25': ['Maulid Nabi Muhammad SAW'],
  };

  static const Map<String, List<String>> twentySix_ExtraHoliday_Events = {
    '2026-2-16': ['Cuti Tahun Baru Imlek'],
    '2026-3-18': ['Cuti Hari Suci Nyepi Tahun Baru Saka'],
    '2026-3-20': ['Cuti Hari Raya Idul Fitri'],
    '2026-3-23': ['Cuti Hari Raya Idul Fitri'],
    '2026-3-24': ['Cuti Hari Raya Idul Fitri'],
    '2026-5-15': ['Cuti Kenaikan Yesus Kristus'],
    '2026-5-28': ['Cuti Idul Adha'],
    '2026-12-24': ['Cuti Kelahiran Yesus Kristus (Natal)'],
  };

//2027
  static const Map<String, List<String>> twentySeven_Holiday_Events_NoText = {
    '2027-2-6': ['Tahun Baru Imlek'],
    '2027-3-26': ['Wafat Yesus Kristus (Jumat Agung)'],
    '2027-3-28': ['Kebangkitan Yesus Kristus (Paskah)'],
    '2027-5-6': ['Kenaikan Yesus Kristus'],
  };

  static const Map<String, List<String>> twentySeven_Holiday_Events = {
    '2027-1-5': ['Isra Mi\'raj Nabi Muhammad SAW'],
    '2027-3-9': ['Hari Suci Nyepi Tahun Baru Saka'],
    '2027-3-10': ['Hari Raya Idul Fitri'],
    '2027-3-11': ['Hari Raya Idul Fitri'],
    '2027-5-20': ['Hari Raya Waisak'],
    '2027-6-6': ['Tahun Baru Islam'],
    '2027-6-16': ['Hari Raya Idul Adha'],
    '2027-8-15': ['Maulid Nabi Muhammad SAW'],
    '2027-12-26': ['Isra Mi\'raj Nabi Muhammad SAW']
  };

  static const Map<String, List<String>> twentySeven_ExtraHoliday_Events = {
    // TODO: Cuti 2027
  };

//2028
  static const Map<String, List<String>> twentyEight_Holiday_Events_NoText = {
    '2028-1-26': ['Tahun Baru Imlek'],
    '2028-4-14': ['Wafat Yesus Kristus (Jumat Agung)'],
    '2028-4-16': ['Kebangkitan Yesus Kristus (Paskah)'],
    '2028-5-25': ['Kenaikan Yesus Kristus'],
  };

  static const Map<String, List<String>> twentyEight_Holiday_Events = {
    '2028-2-26': ['Hari Raya Idul Fitri'],
    '2028-2-27': ['Hari Raya Idul Fitri'],
    '2028-3-26': ['Hari Suci Nyepi Tahun Baru Saka'],
    '2028-5-5': ['Hari Raya Idul Adha'],
    '2028-5-9': ['Hari Raya Waisak'],
    '2028-5-25': ['Tahun Baru Islam'],
    '2028-8-3': ['Maulid Nabi Muhammad SAW'],
    '2028-12-14': ['Isra Mi\'raj Nabi Muhammad SAW']
  };

  static const Map<String, List<String>> twentyEight_ExtraHoliday_Events = {
    // TODO: Cuti 2028
  };

//2029
  static const Map<String, List<String>> twentyNine_Holiday_Events_NoText = {
    '2029-2-13': ['Tahun Baru Imlek'],
    '2029-3-30': ['Wafat Yesus Kristus (Jumat Agung)'],
    '2029-4-1': ['Kebangkitan Yesus Kristus (Paskah)'],
    '2029-5-10': ['Kenaikan Yesus Kristus'],
  };

  static const Map<String, List<String>> twentyNine_Holiday_Events = {
    '2029-2-14': ['Hari Raya Idul Fitri'],
    '2029-2-15': ['Hari Raya Idul Fitri'],
    '2029-3-15': ['Hari Suci Nyepi Tahun Baru Saka'],
    '2029-4-24': ['Hari Raya Idul Adha'],
    '2029-5-14': ['Tahun Baru Islam'],
    '2029-5-27': ['Hari Raya Waisak'],
    '2029-7-24': ['Maulid Nabi Muhammad SAW'],
    '2029-12-3': ['Isra Mi\'raj Nabi Muhammad SAW']
  };

  static const Map<String, List<String>> twentyNine_ExtraHoliday_Events = {
    // TODO: Cuti 2029
  };

//2030
  static const Map<String, List<String>> thirty_Holiday_Events_NoText = {
    '2030-2-2': ['Tahun Baru Imlek'],
    '2030-4-19': ['Wafat Yesus Kristus (Jumat Agung)'],
    '2030-4-21': ['Kebangkitan Yesus Kristus (Paskah)'],
    '2030-5-30': ['Kenaikan Yesus Kristus'],
  };

  static const Map<String, List<String>> thirty_Holiday_Events = {
    '2030-2-4': ['Hari Raya Idul Fitri'],
    '2030-2-5': ['Hari Raya Idul Fitri'],
    '2030-3-5': ['Hari Suci Nyepi Tahun Baru Saka'],
    '2030-4-14': ['Hari Raya Idul Adha'],
    '2030-5-4': ['Tahun Baru Islam'],
    '2030-5-17': ['Hari Raya Waisak'],
    '2030-7-13': ['Maulid Nabi Muhammad SAW'],
    '2030-11-23': ['Isra Mi\'raj Nabi Muhammad SAW']
  };

  static const Map<String, List<String>> thirty_ExtraHoliday_Events = {
    // TODO: Cuti 2030
  };

//2031
  static const Map<String, List<String>> thirtyOne_Holiday_Events_NoText = {
    '2031-1-23': ['Tahun Baru Imlek'],
    '2031-4-11': ['Wafat Yesus Kristus (Jumat Agung)'],
    '2031-4-13': ['Kebangkitan Yesus Kristus (Paskah)'],
    '2031-5-22': ['Kenaikan Yesus Kristus'],
  };

  static const Map<String, List<String>> thirtyOne_Holiday_Events = {
    '2031-1-25': ['Hari Raya Idul Fitri'],
    '2031-1-26': ['Hari Raya Idul Fitri'],
    '2031-3-24': ['Hari Suci Nyepi Tahun Baru Saka'],
    '2031-4-3': ['Hari Raya Idul Adha'],
    '2031-4-23': ['Tahun Baru Islam'],
    '2031-5-7': ['Hari Raya Waisak'],
    '2031-7-2': ['Maulid Nabi Muhammad SAW'],
    '2031-10-13': ['Isra Mi\'raj Nabi Muhammad SAW']
  };

  static const Map<String, List<String>> thirtyOne_ExtraHoliday_Events = {
    // TODO: Cuti 2031
  };

  static const HOLIDAY_EVENTS_NOTEXT = {
    ...twentyFive_Holiday_Events_NoText,
    ...twentySix_Holiday_Events_NoText,
    ...twentySeven_Holiday_Events_NoText,
    ...twentyEight_Holiday_Events_NoText,
    ...twentyNine_Holiday_Events_NoText,
    ...thirty_Holiday_Events_NoText,
    ...thirtyOne_Holiday_Events_NoText
  };

  static const HOLIDAY_EVENTS = {
    ...twentyFive_Holiday_Events,
    ...twentySix_Holiday_Events,
    ...twentySeven_Holiday_Events,
    ...twentyEight_Holiday_Events,
    ...twentyNine_Holiday_Events,
    ...thirty_Holiday_Events,
    ...thirtyOne_Holiday_Events
  };

  static const EXTRAHOLIDAY_EVENTS = {
    ...twentyFive_ExtraHoliday_Events,
    ...twentySix_ExtraHoliday_Events,
    ...twentySeven_ExtraHoliday_Events,
    ...twentyEight_ExtraHoliday_Events,
    ...twentyNine_ExtraHoliday_Events,
    ...thirty_ExtraHoliday_Events,
    ...thirtyOne_ExtraHoliday_Events
  };
}
