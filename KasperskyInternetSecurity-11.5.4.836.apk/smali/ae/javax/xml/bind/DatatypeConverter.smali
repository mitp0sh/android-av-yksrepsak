.class public final Lae/javax/xml/bind/DatatypeConverter;
.super Ljava/lang/Object;
.source "DatatypeConverter.java"


# static fields
.field private static final SET_DATATYPE_CONVERTER_PERMISSION:Lae/javax/xml/bind/JAXBPermission;

.field private static theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    .line 114
    new-instance v0, Lae/javax/xml/bind/JAXBPermission;

    const-string v1, "setDatatypeConverter"

    invoke-direct {v0, v1}, Lae/javax/xml/bind/JAXBPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lae/javax/xml/bind/DatatypeConverter;->SET_DATATYPE_CONVERTER_PERMISSION:Lae/javax/xml/bind/JAXBPermission;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method private static declared-synchronized initConverter()V
    .locals 2

    .prologue
    .line 155
    const-class v1, Lae/javax/xml/bind/DatatypeConverter;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lae/javax/xml/bind/DatatypeConverterImpl;

    invoke-direct {v0}, Lae/javax/xml/bind/DatatypeConverterImpl;-><init>()V

    sput-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v1

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "lexicalXSDAnySimpleType"    # Ljava/lang/String;

    .prologue
    .line 446
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 447
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseAnySimpleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseBase64Binary(Ljava/lang/String;)[B
    .locals 1
    .param p0, "lexicalXSDBase64Binary"    # Ljava/lang/String;

    .prologue
    .line 356
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 357
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lexicalXSDBoolean"    # Ljava/lang/String;

    .prologue
    .line 288
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 289
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parseByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "lexicalXSDByte"    # Ljava/lang/String;

    .prologue
    .line 303
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 304
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "lexicalXSDDate"    # Ljava/lang/String;

    .prologue
    .line 430
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 431
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "lexicalXSDDateTime"    # Ljava/lang/String;

    .prologue
    .line 341
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 342
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseDateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static parseDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "lexicalXSDDecimal"    # Ljava/lang/String;

    .prologue
    .line 243
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 244
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "lexicalXSDDouble"    # Ljava/lang/String;

    .prologue
    .line 273
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 274
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "lexicalXSDFloat"    # Ljava/lang/String;

    .prologue
    .line 258
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 259
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static parseHexBinary(Ljava/lang/String;)[B
    .locals 1
    .param p0, "lexicalXSDHexBinary"    # Ljava/lang/String;

    .prologue
    .line 371
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 372
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "lexicalXSDInt"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 199
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static parseInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "lexicalXSDInteger"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 184
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "lexicalXSDLong"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 214
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseQName(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;
    .locals 1
    .param p0, "lexicalXSDQName"    # Ljava/lang/String;
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 326
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 327
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0, p1}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseQName(Ljava/lang/String;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "lexicalXSDShort"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 229
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public static parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "lexicalXSDString"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 169
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1
    .param p0, "lexicalXSDTime"    # Ljava/lang/String;

    .prologue
    .line 416
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 417
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;)J
    .locals 2
    .param p0, "lexicalXSDUnsignedInt"    # Ljava/lang/String;

    .prologue
    .line 386
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 387
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseUnsignedInt(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedShort(Ljava/lang/String;)I
    .locals 1
    .param p0, "lexicalXSDUnsignedShort"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 402
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->parseUnsignedShort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static printAnySimpleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 707
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 708
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printAnySimpleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printBase64Binary([B)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # [B

    .prologue
    .line 626
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 627
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printBoolean(Z)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Z

    .prologue
    .line 567
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 568
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printBoolean(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printByte(B)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # B

    .prologue
    .line 580
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 581
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printByte(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/util/Calendar;

    .prologue
    .line 694
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 695
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/util/Calendar;

    .prologue
    .line 612
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 613
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/math/BigDecimal;

    .prologue
    .line 528
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 529
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printDouble(D)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # D

    .prologue
    .line 554
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 555
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0, p1}, Lae/javax/xml/bind/DatatypeConverterInterface;->printDouble(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printFloat(F)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # F

    .prologue
    .line 541
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 542
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printFloat(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printHexBinary([B)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # [B

    .prologue
    .line 640
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 641
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printHexBinary([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printInt(I)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 488
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 489
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printInt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 475
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 476
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printLong(J)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # J

    .prologue
    .line 501
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 502
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0, p1}, Lae/javax/xml/bind/DatatypeConverterInterface;->printLong(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljavax/xml/namespace/QName;
    .param p1, "nsc"    # Ljavax/xml/namespace/NamespaceContext;

    .prologue
    .line 598
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 599
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0, p1}, Lae/javax/xml/bind/DatatypeConverterInterface;->printQName(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printShort(S)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # S

    .prologue
    .line 514
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 515
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printShort(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 461
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 462
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # Ljava/util/Calendar;

    .prologue
    .line 680
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 681
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printUnsignedInt(J)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # J

    .prologue
    .line 653
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 654
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0, p1}, Lae/javax/xml/bind/DatatypeConverterInterface;->printUnsignedInt(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printUnsignedShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 666
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lae/javax/xml/bind/DatatypeConverter;->initConverter()V

    .line 667
    :cond_0
    sget-object v0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    invoke-interface {v0, p0}, Lae/javax/xml/bind/DatatypeConverterInterface;->printUnsignedShort(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDatatypeConverter(Lae/javax/xml/bind/DatatypeConverterInterface;)V
    .locals 3
    .param p0, "converter"    # Lae/javax/xml/bind/DatatypeConverterInterface;

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DatatypeConverter.ConverterMustNotBeNull"

    invoke-static {v2}, Lae/javax/xml/bind/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    sget-object v1, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    if-nez v1, :cond_2

    .line 147
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 148
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 149
    sget-object v1, Lae/javax/xml/bind/DatatypeConverter;->SET_DATATYPE_CONVERTER_PERMISSION:Lae/javax/xml/bind/JAXBPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 150
    :cond_1
    sput-object p0, Lae/javax/xml/bind/DatatypeConverter;->theConverter:Lae/javax/xml/bind/DatatypeConverterInterface;

    .line 152
    .end local v0    # "sm":Ljava/lang/SecurityManager;
    :cond_2
    return-void
.end method
