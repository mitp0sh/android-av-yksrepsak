.class public Lcom/amazonaws/services/simpledb/util/SimpleDBUtils;
.super Ljava/lang/Object;
.source "SimpleDBUtils.java"


# static fields
.field private static dateFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sput-object v0, Lcom/amazonaws/services/simpledb/util/SimpleDBUtils;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "javaValue":Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/amazonaws/services/simpledb/util/SimpleDBUtils;->dateFormat:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public static decodeRealNumberRangeFloat(Ljava/lang/String;II)F
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "maxDigitsRight"    # I
    .param p2, "offsetValue"    # I

    .prologue
    .line 272
    const/16 v5, 0xa

    invoke-static {p0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 273
    .local v0, "offsetNumber":J
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    int-to-double v7, p1

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v2, v5

    .line 274
    .local v2, "shiftMultiplier":I
    mul-int v5, p2, v2

    int-to-long v5, v5

    sub-long v5, v0, v5

    long-to-double v3, v5

    .line 275
    .local v3, "tempVal":D
    int-to-double v5, v2

    div-double v5, v3, v5

    double-to-float v5, v5

    return v5
.end method

.method public static decodeRealNumberRangeInt(Ljava/lang/String;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offsetValue"    # I

    .prologue
    .line 237
    const/16 v2, 0xa

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 238
    .local v0, "offsetNumber":J
    int-to-long v2, p1

    sub-long v2, v0, v2

    long-to-int v2, v2

    return v2
.end method

.method public static decodeRealNumberRangeLong(Ljava/lang/String;J)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offsetValue"    # J

    .prologue
    .line 252
    const/16 v2, 0xa

    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 253
    .local v0, "offsetNumber":J
    sub-long v2, v0, p1

    return-wide v2
.end method

.method public static decodeZeroPaddingFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public static decodeZeroPaddingInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static decodeZeroPaddingLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static encodeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 287
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/amazonaws/services/simpledb/util/SimpleDBUtils;->dateFormat:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static encodeRealNumberRange(FIII)Ljava/lang/String;
    .locals 17
    .param p0, "number"    # F
    .param p1, "maxDigitsLeft"    # I
    .param p2, "maxDigitsRight"    # I
    .param p3, "offsetValue"    # I

    .prologue
    .line 211
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    move/from16 v0, p2

    int-to-double v15, v0

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-int v7, v13

    .line 212
    .local v7, "shiftMultiplier":I
    int-to-float v13, v7

    mul-float v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-long v8, v13

    .line 213
    .local v8, "shiftedNumber":J
    mul-int v13, p3, v7

    int-to-long v10, v13

    .line 214
    .local v10, "shiftedOffset":J
    add-long v5, v8, v10

    .line 215
    .local v5, "offsetNumber":J
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "longString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 217
    .local v3, "numBeforeDecimal":I
    add-int v13, p1, p2

    sub-int v4, v13, v3

    .line 218
    .local v4, "numZeroes":I
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v4

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 219
    .local v12, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 220
    const/16 v13, 0x30

    invoke-virtual {v12, v1, v13}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static encodeRealNumberRange(III)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # I
    .param p1, "maxNumDigits"    # I
    .param p2, "offsetValue"    # I

    .prologue
    .line 151
    add-int v6, p0, p2

    int-to-long v3, v6

    .line 152
    .local v3, "offsetNumber":J
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "longString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, p1, v6

    .line 154
    .local v2, "numZeroes":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 155
    .local v5, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 156
    const/16 v6, 0x30

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static encodeRealNumberRange(JIJ)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # J
    .param p2, "maxNumDigits"    # I
    .param p3, "offsetValue"    # J

    .prologue
    .line 180
    add-long v3, p0, p3

    .line 181
    .local v3, "offsetNumber":J
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "longString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, p2, v6

    .line 183
    .local v2, "numZeroes":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 184
    .local v5, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 185
    const/16 v6, 0x30

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static encodeZeroPadding(FI)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # F
    .param p1, "maxNumDigits"    # I

    .prologue
    .line 89
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "floatString":Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 91
    .local v2, "numBeforeDecimal":I
    if-ltz v2, :cond_0

    .line 92
    :goto_0
    sub-int v3, p1, v2

    .line 93
    .local v3, "numZeroes":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 94
    .local v4, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 95
    const/16 v5, 0x30

    invoke-virtual {v4, v1, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v1    # "i":I
    .end local v3    # "numZeroes":I
    .end local v4    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    .line 97
    .restart local v1    # "i":I
    .restart local v3    # "numZeroes":I
    .restart local v4    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static encodeZeroPadding(II)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # I
    .param p1, "maxNumDigits"    # I

    .prologue
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "integerString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, p1, v4

    .line 48
    .local v2, "numZeroes":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 49
    .local v3, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 50
    const/16 v4, 0x30

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static encodeZeroPadding(JI)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # J
    .param p2, "maxNumDigits"    # I

    .prologue
    .line 67
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "longString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v2, p2, v4

    .line 69
    .local v2, "numZeroes":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 70
    .local v3, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 71
    const/16 v4, 0x30

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    const-string v2, "``"

    invoke-static {p0, v1, v2}, Lcom/amazonaws/services/simpledb/util/SimpleDBUtils;->replaceChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quoteValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-static {p0, v1, v2}, Lcom/amazonaws/services/simpledb/util/SimpleDBUtils;->replaceChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static quoteValues(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 324
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 325
    .local v2, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    const/4 v0, 0x0

    .line 327
    invoke-static {v2}, Lcom/amazonaws/services/simpledb/util/SimpleDBUtils;->quoteValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected static replaceChar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "termToFind"    # Ljava/lang/String;
    .param p2, "replacementTerm"    # Ljava/lang/String;

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 365
    .local v1, "searchIndex":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 366
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 367
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 371
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method
