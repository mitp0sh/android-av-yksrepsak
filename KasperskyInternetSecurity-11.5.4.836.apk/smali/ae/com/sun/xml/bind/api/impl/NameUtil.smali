.class Lae/com/sun/xml/bind/api/impl/NameUtil;
.super Ljava/lang/Object;
.source "NameUtil.java"


# static fields
.field private static final ACTION_BREAK:B = 0x2t

.field private static final ACTION_CHECK_C2:B = 0x1t

.field private static final ACTION_CHECK_PUNCT:B = 0x0t

.field private static final ACTION_NOBREAK:B = 0x3t

.field protected static final DIGIT:I = 0x3

.field protected static final LOWER_LETTER:I = 0x1

.field protected static final OTHER:I = 0x4

.field protected static final OTHER_LETTER:I = 0x2

.field protected static final UPPER_LETTER:I

.field private static final actionTable:[B

.field private static reservedKeywords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x19

    const/4 v10, 0x5

    .line 152
    new-array v7, v11, [B

    sput-object v7, Lae/com/sun/xml/bind/api/impl/NameUtil;->actionTable:[B

    .line 183
    const/4 v3, 0x0

    .local v3, "t0":I
    :goto_0
    if-ge v3, v10, :cond_1

    .line 184
    const/4 v4, 0x0

    .local v4, "t1":I
    :goto_1
    if-ge v4, v10, :cond_0

    .line 185
    sget-object v7, Lae/com/sun/xml/bind/api/impl/NameUtil;->actionTable:[B

    mul-int/lit8 v8, v3, 0x5

    add-int/2addr v8, v4

    invoke-static {v3, v4}, Lae/com/sun/xml/bind/api/impl/NameUtil;->decideAction(II)B

    move-result v9

    aput-byte v9, v7, v8

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 183
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v4    # "t1":I
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sput-object v7, Lae/com/sun/xml/bind/api/impl/NameUtil;->reservedKeywords:Ljava/util/HashSet;

    .line 382
    const/16 v7, 0x35

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "abstract"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "boolean"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "break"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "byte"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "case"

    aput-object v8, v6, v7

    const-string v7, "catch"

    aput-object v7, v6, v10

    const/4 v7, 0x6

    const-string v8, "char"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "class"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "const"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "continue"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "default"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "do"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "double"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "else"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "extends"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "final"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "finally"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "float"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "for"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "goto"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "if"

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const-string v8, "implements"

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const-string v8, "import"

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const-string v8, "instanceof"

    aput-object v8, v6, v7

    const/16 v7, 0x18

    const-string v8, "int"

    aput-object v8, v6, v7

    const-string v7, "interface"

    aput-object v7, v6, v11

    const/16 v7, 0x1a

    const-string v8, "long"

    aput-object v8, v6, v7

    const/16 v7, 0x1b

    const-string v8, "native"

    aput-object v8, v6, v7

    const/16 v7, 0x1c

    const-string v8, "new"

    aput-object v8, v6, v7

    const/16 v7, 0x1d

    const-string v8, "package"

    aput-object v8, v6, v7

    const/16 v7, 0x1e

    const-string v8, "private"

    aput-object v8, v6, v7

    const/16 v7, 0x1f

    const-string v8, "protected"

    aput-object v8, v6, v7

    const/16 v7, 0x20

    const-string v8, "public"

    aput-object v8, v6, v7

    const/16 v7, 0x21

    const-string v8, "return"

    aput-object v8, v6, v7

    const/16 v7, 0x22

    const-string v8, "short"

    aput-object v8, v6, v7

    const/16 v7, 0x23

    const-string v8, "static"

    aput-object v8, v6, v7

    const/16 v7, 0x24

    const-string v8, "strictfp"

    aput-object v8, v6, v7

    const/16 v7, 0x25

    const-string v8, "super"

    aput-object v8, v6, v7

    const/16 v7, 0x26

    const-string v8, "switch"

    aput-object v8, v6, v7

    const/16 v7, 0x27

    const-string v8, "synchronized"

    aput-object v8, v6, v7

    const/16 v7, 0x28

    const-string v8, "this"

    aput-object v8, v6, v7

    const/16 v7, 0x29

    const-string v8, "throw"

    aput-object v8, v6, v7

    const/16 v7, 0x2a

    const-string v8, "throws"

    aput-object v8, v6, v7

    const/16 v7, 0x2b

    const-string v8, "transient"

    aput-object v8, v6, v7

    const/16 v7, 0x2c

    const-string v8, "try"

    aput-object v8, v6, v7

    const/16 v7, 0x2d

    const-string v8, "void"

    aput-object v8, v6, v7

    const/16 v7, 0x2e

    const-string v8, "volatile"

    aput-object v8, v6, v7

    const/16 v7, 0x2f

    const-string v8, "while"

    aput-object v8, v6, v7

    const/16 v7, 0x30

    const-string v8, "true"

    aput-object v8, v6, v7

    const/16 v7, 0x31

    const-string v8, "false"

    aput-object v8, v6, v7

    const/16 v7, 0x32

    const-string v8, "null"

    aput-object v8, v6, v7

    const/16 v7, 0x33

    const-string v8, "assert"

    aput-object v8, v6, v7

    const/16 v7, 0x34

    const-string v8, "enum"

    aput-object v8, v6, v7

    .line 443
    .local v6, "words":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 444
    .local v5, "word":Ljava/lang/String;
    sget-object v7, Lae/com/sun/xml/bind/api/impl/NameUtil;->reservedKeywords:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 445
    .end local v5    # "word":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decideAction(II)B
    .locals 6
    .param p0, "t0"    # I
    .param p1, "t1"    # I

    .prologue
    const/4 v0, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 166
    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 174
    :goto_0
    return v2

    .line 167
    :cond_0
    if-ne p0, v4, :cond_1

    move v5, v1

    :goto_1
    if-ne p1, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v5, v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->xor(ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    move v2, v3

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    .line 168
    :cond_3
    if-ne p0, v1, :cond_4

    if-eq p1, v1, :cond_4

    move v2, v3

    goto :goto_0

    .line 169
    :cond_4
    if-gt p0, v3, :cond_5

    move v5, v1

    :goto_3
    if-gt p1, v3, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v5, v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->xor(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    move v2, v3

    goto :goto_0

    :cond_5
    move v5, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    .line 170
    :cond_7
    if-ne p0, v3, :cond_9

    move v0, v1

    :goto_5
    if-ne p1, v3, :cond_8

    move v2, v1

    :cond_8
    invoke-static {v0, v2}, Lae/com/sun/xml/bind/api/impl/NameUtil;->xor(ZZ)Z

    move-result v0

    if-nez v0, :cond_a

    move v2, v3

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_5

    .line 172
    :cond_a
    if-nez p0, :cond_b

    if-nez p1, :cond_b

    move v2, v1

    goto :goto_0

    :cond_b
    move v2, v4

    .line 174
    goto :goto_0
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 334
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {v2, p0, v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->escape(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 338
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 340
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 334
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static escape(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 314
    .local v2, "n":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    const/16 v3, 0xf

    if-gt v0, v3, :cond_2

    const-string v3, "000"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_1
    :goto_2
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 321
    :cond_2
    const/16 v3, 0xff

    if-gt v0, v3, :cond_3

    const-string v3, "00"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 322
    :cond_3
    const/16 v3, 0xfff

    if-gt v0, v3, :cond_1

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 326
    .end local v0    # "c":C
    :cond_4
    return-void
.end method

.method protected static isDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 64
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJavaIdentifier(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v1

    .line 349
    :cond_1
    sget-object v2, Lae/com/sun/xml/bind/api/impl/NameUtil;->reservedKeywords:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 354
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isJavaPackageName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 366
    .local v0, "idx":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 367
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lae/com/sun/xml/bind/api/impl/NameUtil;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 373
    .end local v0    # "idx":I
    :goto_1
    return v1

    .line 370
    .restart local v0    # "idx":I
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0    # "idx":I
    :cond_3
    move v1, v2

    .line 373
    goto :goto_1
.end method

.method protected static isLower(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 72
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isUpper(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 68
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextBreak(Ljava/lang/String;I)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 111
    .local v3, "n":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 112
    .local v0, "c1":C
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->classify(C)I

    move-result v5

    .line 114
    .local v5, "t1":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 117
    move v4, v5

    .line 119
    .local v4, "t0":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->classify(C)I

    move-result v5

    .line 122
    sget-object v6, Lae/com/sun/xml/bind/api/impl/NameUtil;->actionTable:[B

    mul-int/lit8 v7, v4, 0x5

    add-int/2addr v7, v5

    aget-byte v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 114
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :pswitch_0
    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->isPunct(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    .end local v2    # "i":I
    .end local v4    # "t0":I
    :goto_1
    :pswitch_1
    return v2

    .line 127
    .restart local v2    # "i":I
    .restart local v4    # "t0":I
    :pswitch_2
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_0

    .line 128
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 129
    .local v1, "c2":C
    invoke-static {v1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->isLower(C)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 137
    .end local v1    # "c2":C
    .end local v4    # "t0":I
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toUpperCase(C)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static xor(ZZ)Z
    .locals 1
    .param p0, "x"    # Z
    .param p1, "y"    # Z

    .prologue
    .line 178
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->isLower(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 101
    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toUpperCase(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected classify(C)I
    .locals 1
    .param p1, "c0"    # C

    .prologue
    .line 192
    invoke-static {p1}, Ljava/lang/Character;->getType(C)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 193
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 198
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected isLetter(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 76
    const/16 v0, 0x41

    if-lt p1, v0, :cond_0

    const/16 v0, 0x5a

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPunct(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 60
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x387

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6dd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6de

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toConstantName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toWordList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toConstantName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toConstantName(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "ss":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 290
    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected toMixedCaseName(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .param p2, "startUpper"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "ss":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    if-eqz p2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 246
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected toMixedCaseVariableName([Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "ss"    # [Ljava/lang/String;
    .param p2, "startUpper"    # Z
    .param p3, "cdrUpper"    # Z

    .prologue
    const/4 v3, 0x0

    .line 254
    if-eqz p3, :cond_0

    .line 255
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 256
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/api/impl/NameUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, p1

    if-lez v2, :cond_2

    .line 259
    if-eqz p2, :cond_1

    aget-object v2, p1, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 261
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    .end local v0    # "i":I
    :cond_1
    aget-object v2, p1, v3

    invoke-direct {p0, v2}, Lae/com/sun/xml/bind/api/impl/NameUtil;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toWordList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v3, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 216
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 219
    :goto_1
    if-ge v1, v2, :cond_0

    .line 220
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lae/com/sun/xml/bind/api/impl/NameUtil;->isPunct(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 224
    :cond_0
    if-lt v1, v2, :cond_3

    .line 238
    :cond_1
    return-object v3

    .line 222
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_3
    invoke-direct {p0, p1, v1}, Lae/com/sun/xml/bind/api/impl/NameUtil;->nextBreak(Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, "b":I
    if-ne v0, v6, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "w":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v4}, Lae/com/sun/xml/bind/api/impl/NameUtil;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lae/com/sun/xml/bind/api/impl/NameUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    if-eq v0, v6, :cond_1

    .line 231
    move v1, v0

    .line 232
    goto :goto_0

    .line 228
    .end local v4    # "w":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method
