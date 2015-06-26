.class public Lcom/amazonaws/util/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:I

.field private eof:Z

.field private index:I

.field private line:I

.field private previous:C

.field private reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "reader":Ljava/io/Reader;
    :goto_0
    iput-object p1, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 57
    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    .line 58
    iput-boolean v1, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    .line 59
    iput-char v1, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    .line 60
    iput v1, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    .line 61
    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    .line 62
    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    .line 63
    return-void

    .line 55
    .restart local p1    # "reader":Ljava/io/Reader;
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 73
    return-void
.end method

.method public static dehexchar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 99
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 100
    add-int/lit8 v0, p0, -0x30

    .line 108
    :goto_0
    return v0

    .line 102
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 103
    add-int/lit8 v0, p0, -0x37

    goto :goto_0

    .line 105
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 106
    add-int/lit8 v0, p0, -0x57

    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    if-gtz v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iget v0, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    .line 86
    iget v0, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    .line 89
    return-void
.end method

.method public end()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    .line 123
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->end()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 127
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    iget-boolean v4, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    if-eqz v4, :cond_1

    .line 139
    iput-boolean v2, p0, Lcom/amazonaws/util/json/JSONTokener;->usePrevious:Z

    .line 140
    iget-char v0, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    .line 153
    .local v0, "c":I
    :cond_0
    :goto_0
    iget v4, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    .line 154
    iget-char v4, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 155
    iget v4, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    .line 156
    if-ne v0, v6, :cond_2

    :goto_1
    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    .line 163
    :goto_2
    int-to-char v2, v0

    iput-char v2, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    .line 164
    iget-char v2, p0, Lcom/amazonaws/util/json/JSONTokener;->previous:C

    return v2

    .line 143
    .end local v0    # "c":I
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    .restart local v0    # "c":I
    if-gtz v0, :cond_0

    .line 149
    iput-boolean v3, p0, Lcom/amazonaws/util/json/JSONTokener;->eof:Z

    .line 150
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 145
    .local v1, "exception":Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v2, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v0    # "c":I
    :cond_2
    move v2, v3

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    if-ne v0, v6, :cond_4

    .line 158
    iget v3, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    .line 159
    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    goto :goto_2

    .line 161
    :cond_4
    iget v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    goto :goto_2
.end method

.method public next(C)C
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    .line 177
    .local v0, "n":C
    if-eq v0, p1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v1

    throw v1

    .line 181
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 195
    if-nez p1, :cond_0

    .line 196
    const-string v2, ""

    .line 209
    :goto_0
    return-object v2

    .line 199
    :cond_0
    new-array v0, p1, [C

    .line 200
    .local v0, "buffer":[C
    const/4 v1, 0x0

    .line 202
    .local v1, "pos":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 204
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->end()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 207
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    .line 221
    .local v0, "c":C
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 222
    :cond_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    .line 244
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 281
    if-ne v0, p1, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 248
    :sswitch_0
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 250
    :sswitch_1
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    .line 251
    sparse-switch v0, :sswitch_data_1

    .line 277
    const-string v2, "Illegal escape."

    invoke-virtual {p0, v2}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v2

    throw v2

    .line 253
    :sswitch_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 256
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 259
    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 262
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 265
    :sswitch_6
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 268
    :sswitch_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/amazonaws/util/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 274
    :sswitch_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 244
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 251
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x5c -> :sswitch_8
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .param p1, "d"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 299
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    .line 300
    .local v0, "c":C
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 301
    :cond_0
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 304
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 306
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "delimiters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 321
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    .line 322
    .local v0, "c":C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 324
    :cond_0
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 327
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 329
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->nextClean()C

    move-result v0

    .line 345
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 367
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const-string v3, ",:]}/\\\"[{;=#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 348
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/util/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v3

    .line 378
    :goto_1
    return-object v3

    .line 350
    :sswitch_1
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 351
    new-instance v3, Lcom/amazonaws/util/json/JSONObject;

    invoke-direct {v3, p0}, Lcom/amazonaws/util/json/JSONObject;-><init>(Lcom/amazonaws/util/json/JSONTokener;)V

    goto :goto_1

    .line 354
    :sswitch_2
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 355
    new-instance v3, Lcom/amazonaws/util/json/JSONArray;

    invoke-direct {v3, p0}, Lcom/amazonaws/util/json/JSONArray;-><init>(Lcom/amazonaws/util/json/JSONTokener;)V

    goto :goto_1

    .line 372
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    .line 374
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "s":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Lcom/amazonaws/util/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;

    move-result-object v3

    throw v3

    .line 378
    :cond_1
    invoke-static {v1}, Lcom/amazonaws/util/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_2
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 7
    .param p1, "to"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/util/json/JSONException;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    iget v3, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    .line 393
    .local v3, "startIndex":I
    iget v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    .line 394
    .local v2, "startCharacter":I
    iget v4, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    .line 395
    .local v4, "startLine":I
    iget-object v5, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Ljava/io/Reader;->mark(I)V

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->next()C

    move-result v0

    .line 398
    .local v0, "c":C
    if-nez v0, :cond_1

    .line 399
    iget-object v5, p0, Lcom/amazonaws/util/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->reset()V

    .line 400
    iput v3, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    .line 401
    iput v2, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    .line 402
    iput v4, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return v0

    .line 405
    :cond_1
    if-ne v0, p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->back()V

    goto :goto_0

    .line 406
    .end local v0    # "c":C
    .end local v2    # "startCharacter":I
    .end local v3    # "startIndex":I
    .end local v4    # "startLine":I
    :catch_0
    move-exception v1

    .line 407
    .local v1, "exc":Ljava/io/IOException;
    new-instance v5, Lcom/amazonaws/util/json/JSONException;

    invoke-direct {v5, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public syntaxError(Ljava/lang/String;)Lcom/amazonaws/util/json/JSONException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v0, Lcom/amazonaws/util/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazonaws/util/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/util/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->character:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazonaws/util/json/JSONTokener;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
