.class public final LhT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhI;


# instance fields
.field private a:Lic;

.field private b:LhS;

.field private c:LhD;

.field private d:LhU;

.field private e:I

.field private f:I

.field private g:Ljava/util/HashMap;

.field private h:Ljava/util/HashMap;

.field private i:LhY;

.field private j:LhF;


# direct methods
.method public constructor <init>(Lic;LhD;LhF;LhN;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, LhT;->a:Lic;

    .line 25
    iput v1, p0, LhT;->e:I

    .line 26
    iput v1, p0, LhT;->f:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LhT;->g:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LhT;->h:Ljava/util/HashMap;

    .line 29
    new-instance v0, LhY;

    invoke-direct {v0, p0}, LhY;-><init>(LhT;)V

    iput-object v0, p0, LhT;->i:LhY;

    .line 67
    iput-object p1, p0, LhT;->a:Lic;

    .line 68
    new-instance v0, LhD;

    invoke-direct {v0, p2}, LhD;-><init>(LhD;)V

    iput-object v0, p0, LhT;->c:LhD;

    .line 69
    new-instance v0, LhU;

    invoke-direct {v0, p4}, LhU;-><init>(LhN;)V

    iput-object v0, p0, LhT;->d:LhU;

    .line 70
    iput-object p3, p0, LhT;->j:LhF;

    .line 71
    return-void
.end method

.method private a(Lik;I)V
    .locals 3

    .prologue
    .line 348
    iget v0, p1, Lik;->b:I

    iget v1, p1, Lik;->d:I

    iget-boolean v2, p1, Lik;->e:Z

    invoke-static {v0, p2, v1, v2}, Lim;->a(IIIZ)Lij;

    move-result-object v0

    .line 349
    iget-object v1, p0, LhT;->a:Lic;

    iget-object v2, p0, LhT;->i:LhY;

    invoke-virtual {v0}, Lij;->a()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, LhY;->a([Ljava/lang/Object;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Lic;->a([B)V

    .line 350
    return-void
.end method

.method private a(Ljava/lang/String;Lik;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    const/4 v1, 0x0

    .line 262
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 271
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, LhH;

    if-eqz v1, :cond_0

    .line 272
    invoke-direct {p0}, LhT;->d()I

    move-result v1

    .line 273
    new-instance v2, LhP;

    invoke-direct {v2, v1, v4}, LhP;-><init>(IZ)V

    .line 274
    new-instance v1, LhV;

    invoke-direct {v1}, LhV;-><init>()V

    .line 275
    iget-object v3, p0, LhT;->d:LhU;

    invoke-virtual {v3, v1, v2}, LhU;->a(LhJ;LhP;)V

    .line 276
    iget-object v3, p0, LhT;->c:LhD;

    check-cast v0, LhH;

    invoke-virtual {v3, v2, v0}, LhD;->a(LhP;LhH;)V

    .line 277
    new-instance v0, LhR;

    invoke-direct {v0, p0}, LhR;-><init>(LhT;)V

    .line 278
    new-instance v2, Lik;

    iget v3, p2, Lik;->b:I

    invoke-direct {v2, v3, v5, v4, v4}, Lik;-><init>(IIIZ)V

    invoke-virtual {v0, v2}, LhR;->a(Lik;)V

    .line 279
    invoke-virtual {v0, v1}, LhR;->a(LhJ;)V

    .line 280
    iget-object v1, p0, LhT;->a:Lic;

    invoke-virtual {v0}, LhR;->a()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lic;->a([B)V

    .line 287
    :goto_1
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v0, v1

    .line 269
    goto :goto_0

    .line 265
    :catch_1
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 269
    goto :goto_0

    .line 267
    :catch_2
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 285
    :cond_0
    invoke-direct {p0, p2, v5}, LhT;->a(Lik;I)V

    goto :goto_1
.end method

.method private a(Ljava/nio/ByteBuffer;Lik;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, LhT;->h:Ljava/util/HashMap;

    iget v1, p2, Lik;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1, p2}, LhT;->b(Ljava/nio/ByteBuffer;Lik;)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p1, p2}, LhT;->c(Ljava/nio/ByteBuffer;Lik;)V

    goto :goto_0
.end method

.method private b(LhP;)V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, LhT;->c:LhD;

    invoke-virtual {v0, p1}, LhD;->d(LhP;)Z

    .line 322
    iget-object v0, p0, LhT;->d:LhU;

    invoke-virtual {v0, p1}, LhU;->b(LhP;)V

    .line 323
    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;Lik;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, LhT;->h:Ljava/util/HashMap;

    iget v1, p2, Lik;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_1

    .line 167
    iput-object v2, p0, LhT;->b:LhS;

    .line 169
    :try_start_0
    new-instance v0, LhQ;

    invoke-direct {v0, p1}, LhQ;-><init>(Ljava/nio/ByteBuffer;)V

    .line 170
    invoke-virtual {v0}, LhQ;->b()I

    move-result v0

    .line 172
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, LhT;->b:LhS;

    .line 175
    :cond_0
    iget-object v0, p0, LhT;->h:Ljava/util/HashMap;

    iget v2, p2, Lik;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/kavsdk/remoting/protocol/WrongCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 181
    monitor-enter v1

    .line 182
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 183
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 184
    :catch_0
    move-exception v0

    .line 178
    :try_start_2
    invoke-virtual {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 181
    monitor-enter v1

    .line 182
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 183
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 184
    :catchall_2
    move-exception v0

    monitor-enter v1

    .line 182
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 183
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized c()I
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, LhT;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LhT;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/nio/ByteBuffer;Lik;)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, LhT;->g:Ljava/util/HashMap;

    iget v1, p2, Lik;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhM;

    .line 190
    if-eqz v0, :cond_0

    .line 191
    iget-object v1, p0, LhT;->g:Ljava/util/HashMap;

    iget v2, p2, Lik;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-interface {v0, p1}, LhM;->a(Ljava/nio/ByteBuffer;)V

    .line 193
    invoke-interface {v0}, LhM;->d()V

    .line 194
    monitor-enter v0

    .line 195
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized d()I
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget v0, p0, LhT;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LhT;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Ljava/nio/ByteBuffer;Lik;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, LhT;->h:Ljava/util/HashMap;

    iget v1, p2, Lik;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0, p1, p2}, LhT;->f(Ljava/nio/ByteBuffer;Lik;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0, p1, p2}, LhT;->e(Ljava/nio/ByteBuffer;Lik;)V

    goto :goto_0
.end method

.method private e(Ljava/nio/ByteBuffer;Lik;)V
    .locals 3

    .prologue
    .line 211
    .line 212
    iget-object v1, p0, LhT;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, LhT;->g:Ljava/util/HashMap;

    iget v2, p2, Lik;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhM;

    .line 214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    monitor-enter v0

    .line 217
    :try_start_1
    iget-object v1, p0, LhT;->g:Ljava/util/HashMap;

    iget v2, p2, Lik;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-interface {v0, p1}, LhM;->a(Ljava/nio/ByteBuffer;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 220
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    :cond_0
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 220
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private f(Ljava/nio/ByteBuffer;Lik;)V
    .locals 3

    .prologue
    .line 232
    .line 233
    iget-object v1, p0, LhT;->h:Ljava/util/HashMap;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, LhT;->h:Ljava/util/HashMap;

    iget v2, p2, Lik;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 235
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    if-eqz v2, :cond_0

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, LhT;->b:LhS;

    .line 239
    :try_start_1
    new-instance v0, LhQ;

    invoke-direct {v0, p1}, LhQ;-><init>(Ljava/nio/ByteBuffer;)V

    .line 240
    new-instance v1, LhS;

    invoke-virtual {v0}, LhQ;->e()LhP;

    move-result-object v0

    invoke-direct {v1, p0, v0}, LhS;-><init>(LhT;LhP;)V

    iput-object v1, p0, LhT;->b:LhS;

    .line 241
    iget-object v0, p0, LhT;->h:Ljava/util/HashMap;

    iget v1, p2, Lik;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/kavsdk/remoting/protocol/WrongCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 247
    monitor-enter v2

    .line 248
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 249
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 250
    :catch_0
    move-exception v0

    .line 244
    :try_start_3
    invoke-virtual {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 247
    monitor-enter v2

    .line 248
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2

    throw v0

    .line 250
    :catchall_3
    move-exception v0

    monitor-enter v2

    .line 248
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private g(Ljava/nio/ByteBuffer;Lik;)V
    .locals 1

    .prologue
    .line 290
    iget v0, p2, Lik;->d:I

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0, p1, p2}, LhT;->h(Ljava/nio/ByteBuffer;Lik;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-direct {p0, p1, p2}, LhT;->i(Ljava/nio/ByteBuffer;Lik;)V

    goto :goto_0
.end method

.method private h(Ljava/nio/ByteBuffer;Lik;)V
    .locals 2

    .prologue
    .line 300
    :try_start_0
    new-instance v0, LhQ;

    invoke-direct {v0, p1}, LhQ;-><init>(Ljava/nio/ByteBuffer;)V

    .line 301
    invoke-virtual {v0}, LhQ;->b()I

    move-result v1

    .line 303
    packed-switch v1, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 305
    :pswitch_0
    invoke-virtual {v0}, LhQ;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, LhT;->a(Ljava/lang/String;Lik;)V
    :try_end_0
    .catch Lcom/kavsdk/remoting/protocol/WrongCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Lcom/kavsdk/remoting/protocol/WrongCastException;->printStackTrace()V

    goto :goto_0

    .line 309
    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, LhQ;->e()LhP;

    move-result-object v0

    invoke-direct {p0, v0}, LhT;->b(LhP;)V
    :try_end_1
    .catch Lcom/kavsdk/remoting/protocol/WrongCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i(Ljava/nio/ByteBuffer;Lik;)V
    .locals 6

    .prologue
    .line 327
    iget-object v0, p0, LhT;->c:LhD;

    new-instance v1, LhP;

    iget v2, p2, Lik;->d:I

    iget-boolean v3, p2, Lik;->e:Z

    invoke-direct {v1, v2, v3}, LhP;-><init>(IZ)V

    invoke-virtual {v0, v1}, LhD;->a(LhP;)LhH;

    move-result-object v0

    .line 328
    if-nez v0, :cond_1

    .line 329
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, LhT;->a(Lik;I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    new-instance v1, LhR;

    invoke-direct {v1, p0}, LhR;-><init>(LhT;)V

    .line 336
    new-instance v2, LhQ;

    invoke-direct {v2, p1}, LhQ;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v0, v2, v1}, LhH;->a(LhK;LhL;)V

    .line 337
    iget v0, p2, Lik;->b:I

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lik;

    iget v2, p2, Lik;->b:I

    const/4 v3, 0x1

    iget v4, p2, Lik;->d:I

    iget-boolean v5, p2, Lik;->e:Z

    invoke-direct {v0, v2, v3, v4, v5}, Lik;-><init>(IIIZ)V

    .line 340
    invoke-virtual {v1, v0}, LhR;->a(Lik;)V

    .line 341
    invoke-virtual {v1}, LhR;->a()[B

    move-result-object v0

    .line 342
    iget-object v1, p0, LhT;->a:Lic;

    invoke-interface {v1, v0}, Lic;->a([B)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)LhJ;
    .locals 7

    .prologue
    .line 75
    monitor-enter p0

    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-direct {p0}, LhT;->c()I

    move-result v0

    .line 79
    new-instance v2, LhR;

    invoke-direct {v2, p0}, LhR;-><init>(LhT;)V

    .line 81
    new-instance v3, Lik;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v0, v4, v5, v6}, Lik;-><init>(IIIZ)V

    .line 87
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 88
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 92
    :try_start_1
    invoke-virtual {v2, v3}, LhR;->a(Lik;)V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LhR;->a(I)V

    .line 94
    invoke-virtual {v2, p1}, LhR;->a(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, LhR;->a()[B

    move-result-object v2

    .line 96
    iget-object v3, p0, LhT;->h:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :try_start_2
    iget-object v5, p0, LhT;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, LhT;->a:Lic;

    invoke-interface {v0, v2}, Lic;->a([B)V

    .line 99
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 101
    iget-object v1, p0, LhT;->b:LhS;

    .line 103
    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p0, LhT;->d:LhU;

    invoke-virtual {v1}, LhS;->b()LhP;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LhU;->a(LhJ;LhP;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    monitor-exit p0

    return-object v1

    .line 99
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3

    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 111
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 75
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(LhP;)LhX;
    .locals 3

    .prologue
    .line 406
    new-instance v0, LhW;

    iget-object v1, p0, LhT;->a:Lic;

    invoke-direct {p0}, LhT;->c()I

    move-result v2

    invoke-direct {v0, p0, p1, v1, v2}, LhW;-><init>(LhT;LhP;Lic;I)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, LhT;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 363
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 364
    monitor-enter v2

    .line 365
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 366
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, LhT;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 370
    monitor-enter v2

    .line 371
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 372
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 373
    :cond_1
    return-void
.end method

.method public final a(LhJ;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, LhT;->j:LhF;

    invoke-virtual {v0, p1}, LhF;->b(LhJ;)LhP;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, LhT;->c:LhD;

    invoke-virtual {v1, v0}, LhD;->c(LhP;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final a(LhM;[BLjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, LhT;->g:Ljava/util/HashMap;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, LhT;->g:Ljava/util/HashMap;

    invoke-interface {p1}, LhM;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p0, LhT;->a:Lic;

    invoke-interface {v0, p2}, Lic;->a([B)V

    .line 390
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-eqz p3, :cond_0

    .line 392
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 394
    :cond_0
    monitor-enter p1

    .line 396
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 402
    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final a([B)V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lik;

    invoke-direct {v0}, Lik;-><init>()V

    .line 123
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 124
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 125
    invoke-static {v0, v1}, Lin;->a(Lik;Ljava/nio/ByteBuffer;)I

    .line 126
    iget v2, v0, Lik;->c:I

    packed-switch v2, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-direct {p0, v1, v0}, LhT;->g(Ljava/nio/ByteBuffer;Lik;)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0, v1, v0}, LhT;->d(Ljava/nio/ByteBuffer;Lik;)V

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-direct {p0, v1, v0}, LhT;->a(Ljava/nio/ByteBuffer;Lik;)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(LhJ;)LhP;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, LhT;->d:LhU;

    invoke-virtual {v0, p1}, LhU;->a(LhJ;)LhP;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 410
    invoke-virtual {p0}, LhT;->a()V

    .line 411
    return-void
.end method
