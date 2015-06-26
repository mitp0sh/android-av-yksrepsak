.class public Lcom/amazonaws/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final dateUtils:Lcom/amazonaws/util/DateUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/amazonaws/util/DateUtils;

    invoke-direct {v0}, Lcom/amazonaws/util/DateUtils;-><init>()V

    sput-object v0, Lcom/amazonaws/util/StringUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromBoolean(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromByte(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # Ljava/lang/Byte;

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "encodedBytes":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    .line 136
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v0, v2, [B

    .line 133
    .local v0, "binaryData":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 134
    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static fromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 91
    sget-object v0, Lcom/amazonaws/util/StringUtils;->dateUtils:Lcom/amazonaws/util/DateUtils;

    invoke-virtual {v0, p0}, Lcom/amazonaws/util/DateUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromDouble(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Ljava/lang/Double;

    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromFloat(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Float;

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromInteger(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Integer;

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromLong(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Long;

    .prologue
    .line 49
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    return-object p0
.end method

.method public static varargs join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "joiner"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 161
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "originalString"    # Ljava/lang/String;
    .param p1, "partToMatch"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 141
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 144
    .local v1, "indexOf":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toBoolean(Ljava/lang/StringBuilder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static toInteger(Ljava/lang/StringBuilder;)Ljava/lang/Integer;
    .locals 1
    .param p0, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/StringBuilder;

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
