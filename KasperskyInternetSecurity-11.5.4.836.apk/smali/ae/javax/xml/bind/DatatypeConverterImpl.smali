.class final Lae/javax/xml/bind/DatatypeConverterImpl;
.super Ljava/lang/Object;
.source "DatatypeConverterImpl.java"

# interfaces
.implements Lae/javax/xml/bind/DatatypeConverterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PADDING:B = 0x7ft

.field private static final datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

.field private static final decodeMap:[B

.field private static final encodeMap:[C

.field private static final hexCode:[C

.field public static final theInstance:Lae/javax/xml/bind/DatatypeConverterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v1, Lae/javax/xml/bind/DatatypeConverterImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lae/javax/xml/bind/DatatypeConverterImpl;->$assertionsDisabled:Z

    .line 73
    new-instance v1, Lae/javax/xml/bind/DatatypeConverterImpl;

    invoke-direct {v1}, Lae/javax/xml/bind/DatatypeConverterImpl;-><init>()V

    sput-object v1, Lae/javax/xml/bind/DatatypeConverterImpl;->theInstance:Lae/javax/xml/bind/DatatypeConverterInterface;

    .line 485
    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lae/javax/xml/bind/DatatypeConverterImpl;->hexCode:[C

    .line 620
    invoke-static {}, Lae/javax/xml/bind/DatatypeConverterImpl;->initDecodeMap()[B

    move-result-object v1

    sput-object v1, Lae/javax/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    .line 747
    invoke-static {}, Lae/javax/xml/bind/DatatypeConverterImpl;->initEncodeMap()[C

    move-result-object v1

    sput-object v1, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    .line 903
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v1

    sput-object v1, Lae/javax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljavax/xml/datatype/DatatypeConfigurationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static _parseBase64Binary(Ljava/lang/String;)[B
    .locals 14
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {p0}, Lae/javax/xml/bind/DatatypeConverterImpl;->guessLength(Ljava/lang/String;)I

    move-result v0

    .line 706
    .local v0, "buflen":I
    new-array v7, v0, [B

    .line 707
    .local v7, "out":[B
    const/4 v5, 0x0

    .line 709
    .local v5, "o":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 712
    .local v3, "len":I
    const/4 v12, 0x4

    new-array v10, v12, [B

    .line 713
    .local v10, "quadruplet":[B
    const/4 v8, 0x0

    .line 716
    .local v8, "q":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v9, v8

    .end local v8    # "q":I
    .local v9, "q":I
    move v6, v5

    .end local v5    # "o":I
    .local v6, "o":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 717
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 718
    .local v1, "ch":C
    sget-object v12, Lae/javax/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    aget-byte v11, v12, v1

    .line 720
    .local v11, "v":B
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 721
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "q":I
    .restart local v8    # "q":I
    aput-byte v11, v10, v9

    .line 724
    :goto_1
    const/4 v12, 0x4

    if-ne v8, v12, :cond_4

    .line 726
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "o":I
    .restart local v5    # "o":I
    const/4 v12, 0x0

    aget-byte v12, v10, v12

    shl-int/lit8 v12, v12, 0x2

    const/4 v13, 0x1

    aget-byte v13, v10, v13

    shr-int/lit8 v13, v13, 0x4

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v6

    .line 727
    const/4 v12, 0x2

    aget-byte v12, v10, v12

    const/16 v13, 0x7f

    if-eq v12, v13, :cond_0

    .line 728
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "o":I
    .restart local v6    # "o":I
    const/4 v12, 0x1

    aget-byte v12, v10, v12

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x2

    aget-byte v13, v10, v13

    shr-int/lit8 v13, v13, 0x2

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v5

    move v5, v6

    .line 730
    .end local v6    # "o":I
    .restart local v5    # "o":I
    :cond_0
    const/4 v12, 0x3

    aget-byte v12, v10, v12

    const/16 v13, 0x7f

    if-eq v12, v13, :cond_1

    .line 731
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "o":I
    .restart local v6    # "o":I
    const/4 v12, 0x2

    aget-byte v12, v10, v12

    shl-int/lit8 v12, v12, 0x6

    const/4 v13, 0x3

    aget-byte v13, v10, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v7, v5

    move v5, v6

    .line 733
    .end local v6    # "o":I
    .restart local v5    # "o":I
    :cond_1
    const/4 v8, 0x0

    .line 716
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v9, v8

    .end local v8    # "q":I
    .restart local v9    # "q":I
    move v6, v5

    .end local v5    # "o":I
    .restart local v6    # "o":I
    goto :goto_0

    .line 737
    .end local v1    # "ch":C
    .end local v11    # "v":B
    :cond_2
    if-ne v0, v6, :cond_3

    .line 745
    .end local v7    # "out":[B
    :goto_3
    return-object v7

    .line 743
    .restart local v7    # "out":[B
    :cond_3
    new-array v4, v6, [B

    .line 744
    .local v4, "nb":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v7, v12, v4, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v4

    .line 745
    goto :goto_3

    .end local v4    # "nb":[B
    .end local v9    # "q":I
    .restart local v1    # "ch":C
    .restart local v8    # "q":I
    .restart local v11    # "v":B
    :cond_4
    move v5, v6

    .end local v6    # "o":I
    .restart local v5    # "o":I
    goto :goto_2

    .end local v5    # "o":I
    .end local v8    # "q":I
    .restart local v6    # "o":I
    .restart local v9    # "q":I
    :cond_5
    move v8, v9

    .end local v9    # "q":I
    .restart local v8    # "q":I
    goto :goto_1
.end method

.method public static _parseBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 14
    .param p0, "literal"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 277
    if-nez p0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-object v9

    .line 281
    :cond_1
    const/4 v1, 0x0

    .line 282
    .local v1, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 284
    .local v3, "len":I
    const/4 v8, 0x0

    .line 286
    .local v8, "value":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 291
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 292
    .local v0, "ch":C
    invoke-static {v0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v10

    if-eqz v10, :cond_2

    if-lt v2, v3, :cond_c

    .line 294
    :cond_2
    const/4 v5, 0x0

    .line 296
    .local v5, "strIndex":I
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 334
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_4

    .line 336
    :goto_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 337
    invoke-static {v0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v10

    if-eqz v10, :cond_3

    if-lt v2, v3, :cond_9

    :cond_3
    move v1, v2

    .line 340
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    if-ne v1, v3, :cond_0

    .line 341
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_0
    const/4 v8, 0x1

    move v1, v2

    .line 299
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 301
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    const/4 v8, 0x0

    move v1, v2

    .line 302
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 304
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    const-string v7, "rue"

    .local v7, "strTrue":Ljava/lang/String;
    move v1, v2

    .line 306
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 307
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "strIndex":I
    .local v6, "strIndex":I
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v0, :cond_5

    if-ge v2, v3, :cond_5

    if-lt v6, v12, :cond_b

    .line 309
    :cond_5
    if-ne v6, v12, :cond_6

    .line 310
    const/4 v8, 0x1

    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 312
    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v6    # "strIndex":I
    :cond_6
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 318
    .end local v6    # "strIndex":I
    .end local v7    # "strTrue":Ljava/lang/String;
    .restart local v5    # "strIndex":I
    :sswitch_3
    const-string v4, "alse"

    .local v4, "strFalse":Ljava/lang/String;
    move v1, v2

    .line 320
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_5
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 321
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "strIndex":I
    .restart local v6    # "strIndex":I
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v0, :cond_7

    if-ge v2, v3, :cond_7

    if-lt v6, v13, :cond_a

    .line 324
    :cond_7
    if-ne v6, v13, :cond_8

    .line 325
    const/4 v8, 0x0

    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 327
    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v6    # "strIndex":I
    :cond_8
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .end local v4    # "strFalse":Ljava/lang/String;
    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    :cond_9
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v4    # "strFalse":Ljava/lang/String;
    .restart local v6    # "strIndex":I
    :cond_a
    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_5

    .end local v1    # "i":I
    .end local v4    # "strFalse":Ljava/lang/String;
    .end local v5    # "strIndex":I
    .restart local v2    # "i":I
    .restart local v6    # "strIndex":I
    .restart local v7    # "strTrue":Ljava/lang/String;
    :cond_b
    move v5, v6

    .end local v6    # "strIndex":I
    .restart local v5    # "strIndex":I
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .end local v1    # "i":I
    .end local v5    # "strIndex":I
    .end local v7    # "strTrue":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_c
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x31 -> :sswitch_0
        0x66 -> :sswitch_3
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method public static _parseByte(Ljava/lang/CharSequence;)B
    .locals 1
    .param p0, "literal"    # Ljava/lang/CharSequence;

    .prologue
    .line 361
    invoke-static {p0}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static _parseDateTime(Ljava/lang/CharSequence;)Ljava/util/GregorianCalendar;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 434
    invoke-static {p0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "val":Ljava/lang/String;
    sget-object v1, Lae/javax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v1, v0}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    return-object v1
.end method

.method public static _parseDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    invoke-static {p0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 167
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static _parseDouble(Ljava/lang/CharSequence;)D
    .locals 3
    .param p0, "_val"    # Ljava/lang/CharSequence;

    .prologue
    .line 249
    invoke-static {p0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "val":Ljava/lang/String;
    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const-wide/high16 v1, 0x7ff8000000000000L    # NaN

    .line 269
    :goto_0
    return-wide v1

    .line 254
    :cond_0
    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 257
    :cond_1
    const-string v1, "-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/javax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/javax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 264
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_4
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public static _parseFloat(Ljava/lang/CharSequence;)F
    .locals 2
    .param p0, "_val"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    invoke-static {p0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "s":Ljava/lang/String;
    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const/high16 v1, 0x7fc00000    # NaNf

    .line 224
    :goto_0
    return v1

    .line 210
    :cond_0
    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 213
    :cond_1
    const-string v1, "-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/javax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lae/javax/xml/bind/DatatypeConverterImpl;->isDigitOrPeriodOrSign(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 220
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 224
    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public static _parseInt(Ljava/lang/CharSequence;)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 114
    .local v2, "len":I
    const/4 v4, 0x1

    .line 116
    .local v4, "sign":I
    const/4 v3, 0x0

    .line 118
    .local v3, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 119
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 120
    .local v0, "ch":C
    invoke-static {v0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    const/16 v5, 0x30

    if-gt v5, v0, :cond_2

    const/16 v5, 0x39

    if-gt v0, v5, :cond_2

    .line 123
    mul-int/lit8 v5, v3, 0xa

    add-int/lit8 v6, v0, -0x30

    add-int v3, v5, v6

    goto :goto_1

    .line 124
    :cond_2
    const/16 v5, 0x2d

    if-ne v0, v5, :cond_3

    .line 125
    const/4 v4, -0x1

    goto :goto_1

    .line 126
    :cond_3
    const/16 v5, 0x2b

    if-eq v0, v5, :cond_0

    .line 129
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not a number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    .end local v0    # "ch":C
    :cond_4
    mul-int v5, v3, v4

    return v5
.end method

.method public static _parseInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lae/javax/xml/bind/DatatypeConverterImpl;->removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static _parseLong(Ljava/lang/CharSequence;)J
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 141
    invoke-static {p0}, Lae/javax/xml/bind/WhiteSpaceProcessor;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lae/javax/xml/bind/DatatypeConverterImpl;->removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static _parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    .locals 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 380
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 383
    .local v2, "length":I
    const/4 v5, 0x0

    .line 384
    .local v5, "start":I
    :goto_0
    if-ge v5, v2, :cond_0

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lae/javax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 385
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 388
    :cond_0
    move v0, v2

    .line 389
    .local v0, "end":I
    :goto_1
    if-le v0, v5, :cond_1

    add-int/lit8 v7, v0, -0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lae/javax/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 390
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 393
    :cond_1
    if-ne v0, v5, :cond_2

    .line 394
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "input is empty"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 403
    :cond_2
    add-int/lit8 v1, v5, 0x1

    .line 404
    .local v1, "idx":I
    :goto_2
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-eq v7, v8, :cond_3

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 408
    :cond_3
    if-ne v1, v0, :cond_5

    .line 409
    const-string v7, ""

    invoke-interface {p1, v7}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "uri":Ljava/lang/String;
    invoke-interface {p0, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "localPart":Ljava/lang/String;
    const-string v4, ""

    .line 426
    .local v4, "prefix":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljavax/xml/namespace/QName;

    invoke-direct {v7, v6, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 414
    .end local v3    # "localPart":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_5
    invoke-interface {p0, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 415
    .restart local v4    # "prefix":Ljava/lang/String;
    add-int/lit8 v7, v1, 0x1

    invoke-interface {p0, v7, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    .restart local v3    # "localPart":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    .restart local v6    # "uri":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 422
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefix "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not bound to a namespace"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static _parseShort(Ljava/lang/CharSequence;)S
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 149
    invoke-static {p0}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public static _printBase64Binary([BII[BI)I
    .locals 7
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "out"    # [B
    .param p4, "ptr"    # I

    .prologue
    const/16 v6, 0x3d

    .line 838
    move-object v0, p3

    .line 839
    .local v0, "buf":[B
    move v3, p2

    .line 841
    .local v3, "remaining":I
    move v1, p1

    .local v1, "i":I
    move v2, p4

    .end local p4    # "ptr":I
    .local v2, "ptr":I
    :goto_0
    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 842
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 843
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 846
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 849
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 841
    add-int/lit8 v3, v3, -0x3

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 852
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 853
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 854
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 855
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aput-byte v6, v0, v2

    .line 856
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aput-byte v6, v0, p4

    .line 859
    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 860
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 861
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, p4

    .line 864
    add-int/lit8 p4, v2, 0x1

    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeByte(I)B

    move-result v4

    aput-byte v4, v0, v2

    .line 865
    add-int/lit8 v2, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v2    # "ptr":I
    aput-byte v6, v0, p4

    :cond_2
    move p4, v2

    .line 868
    .end local v2    # "ptr":I
    .restart local p4    # "ptr":I
    return p4
.end method

.method public static _printBase64Binary([BII[CI)I
    .locals 6
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "buf"    # [C
    .param p4, "ptr"    # I

    .prologue
    const/16 v5, 0x3d

    .line 797
    move v2, p2

    .line 799
    .local v2, "remaining":I
    move v0, p1

    .local v0, "i":I
    move v1, p4

    .end local p4    # "ptr":I
    .local v1, "ptr":I
    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 800
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 801
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 804
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 807
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 799
    add-int/lit8 v2, v2, -0x3

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 810
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 811
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 812
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 813
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aput-char v5, p3, v1

    .line 814
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aput-char v5, p3, p4

    .line 817
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 818
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 819
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, p4

    .line 821
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Lae/javax/xml/bind/DatatypeConverterImpl;->encode(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 822
    add-int/lit8 v1, p4, 0x1

    .end local p4    # "ptr":I
    .restart local v1    # "ptr":I
    aput-char v5, p3, p4

    :cond_2
    move p4, v1

    .line 824
    .end local v1    # "ptr":I
    .restart local p4    # "ptr":I
    return p4
.end method

.method public static _printBase64Binary([B)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # [B

    .prologue
    .line 776
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printBase64Binary([BII)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 780
    add-int/lit8 v2, p2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    new-array v0, v2, [C

    .line 781
    .local v0, "buf":[C
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v0, v2}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printBase64Binary([BII[CI)I

    move-result v1

    .line 782
    .local v1, "ptr":I
    sget-boolean v2, Lae/javax/xml/bind/DatatypeConverterImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    array-length v2, v0

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 783
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static _printBoolean(Z)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Z

    .prologue
    .line 353
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static _printByte(B)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # B

    .prologue
    .line 369
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "val"    # Ljava/util/Calendar;

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%Y-%M-%D"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "%z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/util/Calendar;

    .prologue
    .line 443
    const-string v0, "%Y-%M-%DT%h:%m:%s%z"

    invoke-static {v0, p0}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/math/BigDecimal;

    .prologue
    .line 559
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printDouble(D)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 567
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string v0, "NaN"

    .line 576
    :goto_0
    return-object v0

    .line 570
    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1

    .line 571
    const-string v0, "INF"

    goto :goto_0

    .line 573
    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    .line 574
    const-string v0, "-INF"

    goto :goto_0

    .line 576
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static _printFloat(F)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 232
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "NaN"

    .line 241
    :goto_0
    return-object v0

    .line 235
    :cond_0
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    .line 236
    const-string v0, "INF"

    goto :goto_0

    .line 238
    :cond_1
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2

    .line 239
    const-string v0, "-INF"

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static _printInt(I)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 543
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printLong(J)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # J

    .prologue
    .line 551
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static _printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 5
    .param p0, "val"    # Ljavax/xml/namespace/QName;
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 586
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "localPart":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 590
    :cond_0
    move-object v2, v0

    .line 595
    .local v2, "qname":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 592
    .end local v2    # "qname":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "qname":Ljava/lang/String;
    goto :goto_0
.end method

.method public static _printShort(S)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # S

    .prologue
    .line 157
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(I)C
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 768
    sget-object v0, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    and-int/lit8 v1, p0, 0x3f

    aget-char v0, v0, v1

    return v0
.end method

.method public static encodeByte(I)B
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 772
    sget-object v0, Lae/javax/xml/bind/DatatypeConverterImpl;->encodeMap:[C

    and-int/lit8 v1, p0, 0x3f

    aget-char v0, v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static guessLength(Ljava/lang/String;)I
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 667
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 670
    .local v2, "len":I
    add-int/lit8 v1, v2, -0x1

    .line 671
    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_1

    .line 672
    sget-object v4, Lae/javax/xml/bind/DatatypeConverterImpl;->decodeMap:[B

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v0, v4, v5

    .line 673
    .local v0, "code":B
    const/16 v4, 0x7f

    if-ne v0, v4, :cond_0

    .line 671
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 676
    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 678
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    .line 692
    .end local v0    # "code":B
    :goto_1
    return v4

    .line 683
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 684
    sub-int v3, v2, v1

    .line 685
    .local v3, "padSize":I
    const/4 v4, 0x2

    if-le v3, v4, :cond_2

    .line 687
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 692
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    goto :goto_1
.end method

.method private static hexToBin(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 474
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 475
    add-int/lit8 v0, p0, -0x30

    .line 483
    :goto_0
    return v0

    .line 477
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 478
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 480
    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 481
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 483
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static initDecodeMap()[B
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 624
    new-array v1, v3, [B

    .line 626
    .local v1, "map":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 627
    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_0
    const/16 v0, 0x41

    :goto_1
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    .line 631
    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 633
    :cond_1
    const/16 v0, 0x61

    :goto_2
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 634
    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 636
    :cond_2
    const/16 v0, 0x30

    :goto_3
    const/16 v2, 0x39

    if-gt v0, v2, :cond_3

    .line 637
    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 636
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 639
    :cond_3
    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 640
    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 641
    const/16 v2, 0x3d

    const/16 v3, 0x7f

    aput-byte v3, v1, v2

    .line 643
    return-object v1
.end method

.method private static initEncodeMap()[C
    .locals 4

    .prologue
    const/16 v3, 0x3e

    .line 750
    const/16 v2, 0x40

    new-array v1, v2, [C

    .line 752
    .local v1, "map":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 753
    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    :cond_0
    const/16 v0, 0x1a

    :goto_1
    const/16 v2, 0x34

    if-ge v0, v2, :cond_1

    .line 756
    add-int/lit8 v2, v0, -0x1a

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 758
    :cond_1
    const/16 v0, 0x34

    :goto_2
    if-ge v0, v3, :cond_2

    .line 759
    add-int/lit8 v2, v0, -0x34

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 761
    :cond_2
    const/16 v2, 0x2b

    aput-char v2, v1, v3

    .line 762
    const/16 v2, 0x3f

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    .line 764
    return-object v1
.end method

.method public static installHook(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 616
    sget-object v0, Lae/javax/xml/bind/DatatypeConverterImpl;->theInstance:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-static {v0}, Lae/javax/xml/bind/DatatypeConverter;->setDatatypeConverter(Lae/javax/xml/bind/DatatypeConverterInterface;)V

    .line 617
    return-object p0
.end method

.method private static isDigitOrPeriodOrSign(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    .line 891
    const/16 v1, 0x30

    if-gt v1, p0, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 897
    :cond_0
    :goto_0
    return v0

    .line 894
    :cond_1
    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    .line 897
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeOptionalPlus(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 872
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 874
    .local v1, "len":I
    if-le v1, v5, :cond_0

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    .line 884
    :cond_0
    return-object p0

    .line 878
    :cond_1
    invoke-interface {p0, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 879
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 880
    .local v0, "ch":C
    const/16 v2, 0x30

    if-gt v2, v0, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    .line 883
    :cond_2
    const/16 v2, 0x2e

    if-eq v2, v0, :cond_0

    .line 887
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2
.end method


# virtual methods
.method public parseAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "lexicalXSDAnySimpleType"    # Ljava/lang/String;

    .prologue
    .line 529
    return-object p1
.end method

.method public parseBase64Binary(Ljava/lang/String;)[B
    .locals 1
    .param p1, "lexicalXSDBase64Binary"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lexicalXSDBoolean"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public parseByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "lexicalXSDByte"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseByte(Ljava/lang/CharSequence;)B

    move-result v0

    return v0
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p1, "lexicalXSDDate"    # Ljava/lang/String;

    .prologue
    .line 517
    sget-object v0, Lae/javax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public parseDateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p1, "lexicalXSDDateTime"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseDateTime(Ljava/lang/CharSequence;)Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public parseDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseDecimal(Ljava/lang/CharSequence;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "lexicalXSDDouble"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseDouble(Ljava/lang/CharSequence;)D

    move-result-wide v0

    return-wide v0
.end method

.method public parseFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "lexicalXSDFloat"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseFloat(Ljava/lang/CharSequence;)F

    move-result v0

    return v0
.end method

.method public parseHexBinary(Ljava/lang/String;)[B
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 454
    .local v3, "len":I
    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_0

    .line 455
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hexBinary needs to be even-length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 458
    :cond_0
    div-int/lit8 v5, v3, 0x2

    new-array v4, v5, [B

    .line 460
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lae/javax/xml/bind/DatatypeConverterImpl;->hexToBin(C)I

    move-result v0

    .line 462
    .local v0, "h":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lae/javax/xml/bind/DatatypeConverterImpl;->hexToBin(C)I

    move-result v2

    .line 463
    .local v2, "l":I
    if-eq v0, v7, :cond_1

    if-ne v2, v7, :cond_2

    .line 464
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contains illegal character for hexBinary: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 467
    :cond_2
    div-int/lit8 v5, v1, 0x2

    mul-int/lit8 v6, v0, 0x10

    add-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 460
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 470
    .end local v0    # "h":I
    .end local v2    # "l":I
    :cond_3
    return-object v4
.end method

.method public parseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public parseInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "lexicalXSDInteger"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseInteger(Ljava/lang/CharSequence;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public parseLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "lexicalXSLong"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseQName(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p1, "lexicalXSDQName"    # Ljava/lang/String;
    .param p2, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 373
    invoke-static {p1, p2}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseQName(Ljava/lang/CharSequence;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public parseShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "lexicalXSDShort"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseShort(Ljava/lang/CharSequence;)S

    move-result v0

    return v0
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "lexicalXSDString"    # Ljava/lang/String;

    .prologue
    .line 79
    return-object p1
.end method

.method public parseTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p1, "lexicalXSDTime"    # Ljava/lang/String;

    .prologue
    .line 509
    sget-object v0, Lae/javax/xml/bind/DatatypeConverterImpl;->datatypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public parseUnsignedInt(Ljava/lang/String;)J
    .locals 2
    .param p1, "lexicalXSDUnsignedInt"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method public parseUnsignedShort(Ljava/lang/String;)I
    .locals 1
    .param p1, "lexicalXSDUnsignedShort"    # Ljava/lang/String;

    .prologue
    .line 505
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_parseInt(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public printAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 607
    return-object p1
.end method

.method public printBase64Binary([B)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # [B

    .prologue
    .line 599
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printBase64Binary([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printBoolean(Z)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 349
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public printByte(B)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # B

    .prologue
    .line 365
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printByte(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/util/Calendar;

    .prologue
    .line 521
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/util/Calendar;

    .prologue
    .line 439
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/math/BigDecimal;

    .prologue
    .line 555
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printDouble(D)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 563
    invoke-static {p1, p2}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printDouble(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printFloat(F)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 228
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printFloat(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printHexBinary([B)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    .local v4, "r":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 490
    .local v1, "b":B
    sget-object v5, Lae/javax/xml/bind/DatatypeConverterImpl;->hexCode:[C

    shr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    sget-object v5, Lae/javax/xml/bind/DatatypeConverterImpl;->hexCode:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public printInt(I)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 539
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printInt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 91
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printLong(J)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 547
    invoke-static {p1, p2}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printLong(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljavax/xml/namespace/QName;
    .param p2, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 580
    invoke-static {p1, p2}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printShort(S)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # S

    .prologue
    .line 153
    invoke-static {p1}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printShort(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 535
    return-object p1
.end method

.method public printTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # Ljava/util/Calendar;

    .prologue
    .line 513
    const-string v0, "%h:%m:%s%z"

    invoke-static {v0, p1}, Lae/javax/xml/bind/DatatypeConverterImpl$CalendarFormatter;->doFormat(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printUnsignedInt(J)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # J

    .prologue
    .line 501
    invoke-static {p1, p2}, Lae/javax/xml/bind/DatatypeConverterImpl;->_printLong(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printUnsignedShort(I)Ljava/lang/String;
    .locals 1
    .param p1, "val"    # I

    .prologue
    .line 603
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
