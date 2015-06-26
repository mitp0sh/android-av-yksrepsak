.class public Lcom/amazonaws/util/json/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# static fields
.field private static final maxdepth:I = 0x14


# instance fields
.field private comma:Z

.field protected mode:C

.field private stack:[Lcom/amazonaws/util/json/JSONObject;

.field private top:I

.field protected writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "w"    # Ljava/io/Writer;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    .line 101
    const/16 v0, 0x69

    iput-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    .line 102
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/amazonaws/util/json/JSONObject;

    iput-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    .line 103
    iput v1, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    .line 104
    iput-object p1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    .line 105
    return-void
.end method

.method private append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x6f

    const/16 v2, 0x61

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const-string v2, "Null pointer"

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    iget-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-eq v1, v3, :cond_1

    iget-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_4

    .line 119
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-ne v1, v2, :cond_2

    .line 120
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    iget-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-ne v1, v3, :cond_3

    .line 127
    const/16 v1, 0x6b

    iput-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    .line 129
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    .line 130
    return-object p0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const-string v2, "Value out of sequence."

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private end(CC)Lcom/amazonaws/util/json/JSONWriter;
    .locals 3
    .param p1, "m"    # C
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 162
    iget-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-eq v1, p1, :cond_1

    .line 163
    new-instance v2, Lcom/amazonaws/util/json/JSONException;

    const/16 v1, 0x61

    if-ne p1, v1, :cond_0

    const-string v1, "Misplaced endArray."

    :goto_0
    invoke-direct {v2, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v1, "Misplaced endObject."

    goto :goto_0

    .line 166
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazonaws/util/json/JSONWriter;->pop(C)V

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    .line 173
    return-object p0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pop(C)V
    .locals 5
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6b

    const/16 v1, 0x61

    .line 257
    iget v3, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    if-gtz v3, :cond_0

    .line 258
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v4, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    move v0, v1

    .line 261
    .local v0, "m":C
    :goto_0
    if-eq v0, p1, :cond_2

    .line 262
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const-string v2, "Nesting error."

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "m":C
    :cond_1
    move v0, v2

    .line 260
    goto :goto_0

    .line 264
    .restart local v0    # "m":C
    :cond_2
    iget v3, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    .line 265
    iget v3, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    if-nez v3, :cond_4

    const/16 v1, 0x64

    :cond_3
    :goto_1
    iput-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    .line 266
    return-void

    .line 265
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v4, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method

.method private push(Lcom/amazonaws/util/json/JSONObject;)V
    .locals 2
    .param p1, "jo"    # Lcom/amazonaws/util/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    iget v0, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 275
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Nesting too deep."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v1, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    aput-object p1, v0, v1

    .line 278
    if-nez p1, :cond_1

    const/16 v0, 0x61

    :goto_0
    iput-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    .line 279
    iget v0, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    .line 280
    return-void

    .line 278
    :cond_1
    const/16 v0, 0x6b

    goto :goto_0
.end method


# virtual methods
.method public array()Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->push(Lcom/amazonaws/util/json/JSONObject;)V

    .line 147
    const-string v0, "["

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    .line 149
    return-object p0

    .line 151
    :cond_1
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Misplaced array."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 183
    const/16 v0, 0x61

    const/16 v1, 0x5d

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->end(CC)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/amazonaws/util/json/JSONWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 193
    const/16 v0, 0x6b

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/util/json/JSONWriter;->end(CC)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const-string v2, "Null key."

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iget-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_2

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONWriter;->stack:[Lcom/amazonaws/util/json/JSONObject;

    iget v2, p0, Lcom/amazonaws/util/json/JSONWriter;->top:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/util/json/JSONObject;->putOnce(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONObject;

    .line 211
    iget-boolean v1, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/amazonaws/util/json/JSONWriter;->writer:Ljava/io/Writer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    .line 217
    const/16 v1, 0x6f

    iput-char v1, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-object p0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v1, v0}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v1, Lcom/amazonaws/util/json/JSONException;

    const-string v2, "Misplaced key."

    invoke-direct {v1, v2}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public object()Lcom/amazonaws/util/json/JSONWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6f

    .line 237
    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 238
    iput-char v2, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    .line 240
    :cond_0
    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/amazonaws/util/json/JSONWriter;->mode:C

    const/16 v1, 0x61

    if-ne v0, v1, :cond_2

    .line 241
    :cond_1
    const-string v0, "{"

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    .line 242
    new-instance v0, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v0}, Lcom/amazonaws/util/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->push(Lcom/amazonaws/util/json/JSONObject;)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONWriter;->comma:Z

    .line 244
    return-object p0

    .line 246
    :cond_2
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Misplaced object."

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public value(D)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(J)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {p1}, Lcom/amazonaws/util/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 3
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 334
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 335
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 337
    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v1

    return-object v1
.end method

.method public value(Ljava/util/Date;)Lcom/amazonaws/util/json/JSONWriter;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->value(Ljava/lang/Object;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lcom/amazonaws/util/json/JSONWriter;
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONWriter;->append(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
