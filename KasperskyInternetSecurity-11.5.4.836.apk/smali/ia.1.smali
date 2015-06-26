.class public abstract Lia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhL;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lia;->a:Ljava/util/Vector;

    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x10

    const/16 v0, 0xc

    .line 110
    const/16 v3, 0x8

    .line 113
    instance-of v4, p0, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 121
    instance-of v4, p0, Ljava/lang/Long;

    if-eqz v4, :cond_2

    move v0, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    instance-of v4, p0, Ljava/lang/Byte;

    if-eqz v4, :cond_3

    .line 126
    const/16 v0, 0x9

    .line 127
    goto :goto_0

    .line 129
    :cond_3
    instance-of v4, p0, Ljava/lang/Character;

    if-eqz v4, :cond_4

    move v0, v2

    .line 131
    goto :goto_0

    .line 133
    :cond_4
    instance-of v4, p0, Ljava/lang/Short;

    if-eqz v4, :cond_5

    move v0, v2

    .line 135
    goto :goto_0

    .line 137
    :cond_5
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_6

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_6
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_0

    .line 145
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 146
    check-cast p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    .line 147
    goto :goto_0

    .line 149
    :cond_7
    instance-of v0, p0, LhJ;

    if-eqz v0, :cond_8

    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :cond_8
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_9

    .line 154
    check-cast p0, Ljava/util/Vector;

    invoke-static {p0}, Lia;->b(Ljava/util/Vector;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    .line 155
    goto :goto_0

    .line 157
    :cond_9
    instance-of v0, p0, Lio;

    if-eqz v0, :cond_a

    .line 158
    check-cast p0, Lio;

    invoke-virtual {p0}, Lio;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_a
    move v0, v3

    goto :goto_0
.end method

.method private static a([Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    move v1, v0

    .line 101
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 102
    aget-object v2, p0, v0

    invoke-static {v2}, Lia;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return v1
.end method

.method private a(Ljava/nio/ByteBuffer;Lio;)V
    .locals 2

    .prologue
    .line 311
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lia;->b([Ljava/lang/Object;)[B

    move-result-object v0

    .line 313
    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {p2}, Lio;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 315
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 261
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 262
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 263
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Byte;)V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 277
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Character;)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 267
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 270
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Double;)V
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 295
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 296
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 297
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 288
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 289
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 291
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 240
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 243
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 247
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 248
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 249
    return-void
.end method

.method private declared-synchronized a(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 180
    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_1
    :try_start_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 184
    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :cond_2
    :try_start_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 188
    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Long;)V

    goto :goto_0

    .line 191
    :cond_3
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 192
    check-cast p2, Ljava/lang/Byte;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Byte;)V

    goto :goto_0

    .line 195
    :cond_4
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 196
    check-cast p2, Ljava/lang/Character;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Character;)V

    goto :goto_0

    .line 199
    :cond_5
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 200
    check-cast p2, Ljava/lang/Short;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Short;)V

    goto :goto_0

    .line 203
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 204
    check-cast p2, Ljava/lang/Double;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Double;)V

    goto :goto_0

    .line 207
    :cond_7
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 208
    check-cast p2, Ljava/lang/Float;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Float;)V

    goto :goto_0

    .line 211
    :cond_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 212
    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_9
    instance-of v0, p2, LhJ;

    if-eqz v0, :cond_a

    .line 216
    check-cast p2, LhJ;

    invoke-virtual {p0, p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;LhJ;)V

    goto :goto_0

    .line 219
    :cond_a
    instance-of v0, p2, Ljava/util/Vector;

    if-eqz v0, :cond_b

    .line 220
    check-cast p2, Ljava/util/Vector;

    invoke-direct {p0, p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/util/Vector;)V

    goto :goto_0

    .line 223
    :cond_b
    instance-of v0, p2, Lio;

    if-eqz v0, :cond_0

    .line 224
    check-cast p2, Lio;

    invoke-direct {p0, p1, p2}, Lia;->a(Ljava/nio/ByteBuffer;Lio;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/Short;)V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 281
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 284
    return-void
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 254
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 255
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 257
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Ljava/util/Vector;)V
    .locals 2

    .prologue
    .line 302
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {p2}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lia;->b([Ljava/lang/Object;)[B

    move-result-object v0

    .line 304
    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 305
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 306
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 308
    return-void
.end method

.method private static b(Ljava/util/Vector;)I
    .locals 3

    .prologue
    .line 169
    const/4 v1, 0x4

    .line 170
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 171
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lia;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return v1
.end method

.method private b([Ljava/lang/Object;)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 319
    .line 322
    :try_start_0
    invoke-static {p1}, Lia;->a([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 327
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 328
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 330
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 331
    aget-object v2, p1, v1

    invoke-direct {p0, v0, v2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lia;->a:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lia;->a:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public final a(LhJ;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lia;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lia;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method protected abstract a(Ljava/nio/ByteBuffer;LhJ;)V
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lia;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lia;->a:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public a()[B
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 83
    :try_start_0
    iget-object v1, p0, Lia;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lia;->a([Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    iget-object v1, p0, Lia;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 91
    invoke-direct {p0, v0, v2}, Lia;->a(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
