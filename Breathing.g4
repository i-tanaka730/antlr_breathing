grammar Breathing;

/**
 * parser
 */
breathing :
    // [TYPE]の呼吸[NUM]の型[NAME]([OPTION])
    type '\u306e\u547c\u5438' num '\u306e\u578b' name ('('option')')?
    ;

type :
    TYPE
    ;

name :
    (ANY)+
    ;

num :
    NUMBER
    ;

option :
    (NUMBER | ANY)+
    ;

/**
 * lexer
 */
TYPE :
    // 水炎雷風岩蟲花恋蛇音獣月日
    [\u6c34\u708e\u96f7\u98a8\u5ca9\u87f2\u82b1\u604b\u86c7\u97f3\u7363\u6708\u65e5]
    ;

NUMBER :
    // 壱弐参四五六七八九拾
    [\u58f1\u5f10\u53c2\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u62fe]+
    ;

ANY : 
    .
    ;