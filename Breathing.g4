grammar Breathing;

/**
 * lexer
 */
breathing
  : KOKYU 'の呼吸' NUM 'の型 ' NAME
  ;

/**
 * parser
 */
KOKYU
  // 水炎雷風岩蟲花恋蛇音獣月日
  : [\u6c34\u708e\u96f7\u98a8\u5ca9\u87f2\u82b1\u604b\u86c7\u97f3\u7363\u6708\u65e5]
  ;

NUM
  // 一二三四五六七八九十
  : [\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341]+
  ;

NAME
  // 亜-熙ぁ-んァ-ヶ
  : [\u4e9c-\u7199\u3041-\u3093\u30a1-\u30f6]+
  ;

// SPACE
//   : ' ' -> skip
//   ;