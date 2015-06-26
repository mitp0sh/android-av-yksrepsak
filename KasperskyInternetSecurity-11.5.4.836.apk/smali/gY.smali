.class public final LgY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LhF;

.field private b:LhT;

.field private c:LhS;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static a(Lid;Ljava/lang/String;Ljava/lang/String;LhC;)LgY;
    .locals 2

    .prologue
    .line 171
    new-instance v0, LgY;

    invoke-direct {v0}, LgY;-><init>()V

    .line 172
    invoke-direct {v0, p0, p1, p2, p3}, LgY;->b(Lid;Ljava/lang/String;Ljava/lang/String;LhC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to createAvScanner"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-object v0
.end method

.method private b(Lid;Ljava/lang/String;Ljava/lang/String;LhC;)Z
    .locals 3

    .prologue
    .line 357
    const/4 v1, 0x0

    .line 358
    new-instance v0, LhF;

    invoke-direct {v0}, LhF;-><init>()V

    iput-object v0, p0, LgY;->a:LhF;

    .line 360
    invoke-interface {p4}, LhC;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LgY;->a:LhF;

    invoke-interface {p1, v0, v2}, Lid;->a(Ljava/lang/String;Lie;)Lic;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    iget-object v2, p0, LgY;->a:LhF;

    invoke-virtual {v2, v0}, LhF;->a(Lic;)LhI;

    move-result-object v0

    check-cast v0, LhT;

    iput-object v0, p0, LgY;->b:LhT;

    .line 364
    iget-object v0, p0, LgY;->b:LhT;

    const-string v2, "com.kavsdk.antivirus.AvObjectScanner"

    invoke-virtual {v0, v2}, LhT;->a(Ljava/lang/String;)LhJ;

    move-result-object v0

    check-cast v0, LhS;

    iput-object v0, p0, LgY;->c:LhS;

    .line 365
    iget-object v0, p0, LgY;->c:LhS;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, LgY;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 367
    const/4 v2, 0x2

    invoke-interface {v0, v2}, LhM;->a(I)V

    .line 368
    invoke-interface {v0, p2}, LhM;->a(Ljava/lang/String;)V

    .line 369
    invoke-interface {v0, p3}, LhM;->a(Ljava/lang/String;)V

    .line 370
    invoke-interface {v0}, LhM;->a()LhK;

    move-result-object v0

    .line 371
    invoke-interface {v0}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    invoke-interface {v0}, LhK;->b()I

    move-result v0

    .line 373
    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LhH;Z)I
    .locals 5

    .prologue
    .line 238
    const/16 v0, -0x13

    .line 241
    :try_start_0
    new-instance v1, Lcom/kavsdk/pipes/Pipe;

    invoke-direct {v1, p3}, Lcom/kavsdk/pipes/Pipe;-><init>(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, LgY;->a:LhF;

    invoke-virtual {v2, p5}, LhF;->a(LhH;)LhJ;

    move-result-object v2

    .line 245
    iget-object v3, p0, LgY;->c:LhS;

    invoke-virtual {v3}, LhS;->c()LhM;

    move-result-object v3

    .line 247
    const/16 v4, 0x9

    invoke-interface {v3, v4}, LhM;->a(I)V

    .line 249
    const/4 v4, 0x2

    invoke-interface {v3, v4}, LhM;->a(I)V

    .line 250
    invoke-interface {v3, p2}, LhM;->a(Ljava/lang/String;)V

    .line 251
    invoke-interface {v3, p3}, LhM;->a(Ljava/lang/String;)V

    .line 252
    invoke-interface {v3, p4}, LhM;->a(Ljava/lang/String;)V

    .line 253
    invoke-interface {v3, v2}, LhM;->a(LhJ;)V

    .line 254
    invoke-interface {v3, p6}, LhM;->a(Z)V

    .line 256
    new-instance v2, LgZ;

    invoke-direct {v2, p0, v1, p1}, LgZ;-><init>(LgY;Lcom/kavsdk/pipes/Pipe;Ljava/io/InputStream;)V

    .line 266
    invoke-interface {v3, v2}, LhM;->a(Ljava/lang/Runnable;)LhK;

    move-result-object v1

    .line 268
    invoke-virtual {v2}, Lha;->a()Ljava/io/IOException;

    move-result-object v2

    .line 269
    if-eqz v2, :cond_1

    .line 270
    const/16 v0, -0x17

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-interface {v1}, LhK;->b()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    const/4 v0, -0x6

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILhH;)I
    .locals 4

    .prologue
    .line 285
    const/16 v0, -0x13

    .line 286
    iget-object v1, p0, LgY;->a:LhF;

    invoke-virtual {v1, p3}, LhF;->a(LhH;)LhJ;

    move-result-object v1

    .line 288
    iget-object v2, p0, LgY;->c:LhS;

    invoke-virtual {v2}, LhS;->c()LhM;

    move-result-object v2

    .line 289
    const/4 v3, 0x5

    invoke-interface {v2, v3}, LhM;->a(I)V

    .line 290
    invoke-interface {v2, p2}, LhM;->a(I)V

    .line 291
    invoke-interface {v2, p1}, LhM;->a(Ljava/lang/String;)V

    .line 292
    invoke-interface {v2, v1}, LhM;->a(LhJ;)V

    .line 293
    invoke-interface {v2}, LhM;->a()LhK;

    move-result-object v2

    .line 294
    invoke-interface {v1}, LhJ;->a()V

    .line 296
    invoke-interface {v2}, LhK;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v2}, LhK;->b()I

    move-result v0

    .line 300
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;I[Ljava/lang/String;LhH;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 306
    iget-object v1, p0, LgY;->a:LhF;

    invoke-virtual {v1, p4}, LhF;->a(LhH;)LhJ;

    move-result-object v2

    .line 308
    iget-object v1, p0, LgY;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v3

    .line 309
    if-eqz p3, :cond_1

    .line 311
    new-instance v1, Ljava/util/Vector;

    array-length v4, p3

    invoke-direct {v1, v4}, Ljava/util/Vector;-><init>(I)V

    .line 312
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_0

    .line 313
    aget-object v4, p3, v0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 319
    :goto_1
    const/16 v1, -0x13

    .line 320
    const/4 v4, 0x1

    invoke-interface {v3, v4}, LhM;->a(I)V

    .line 321
    invoke-interface {v3, p2}, LhM;->a(I)V

    .line 322
    invoke-interface {v3, p1}, LhM;->a(Ljava/lang/String;)V

    .line 323
    invoke-interface {v3, v0}, LhM;->a(Ljava/util/Vector;)V

    .line 324
    invoke-interface {v3, v2}, LhM;->a(LhJ;)V

    .line 325
    invoke-interface {v3}, LhM;->a()LhK;

    move-result-object v0

    .line 329
    invoke-interface {v0}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    invoke-interface {v0}, LhK;->b()I

    move-result v0

    .line 332
    :goto_2
    return v0

    .line 316
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/util/Vector;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 218
    .line 220
    iget-object v1, p0, LgY;->c:LhS;

    invoke-virtual {v1}, LhS;->c()LhM;

    move-result-object v1

    .line 223
    invoke-interface {v1, v0}, LhM;->a(I)V

    .line 224
    invoke-interface {v1, p1}, LhM;->a(Ljava/lang/String;)V

    .line 226
    invoke-interface {v1, p2}, LhM;->a(Ljava/util/Vector;)V

    .line 228
    invoke-interface {v1}, LhM;->a()LhK;

    move-result-object v1

    .line 229
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-interface {v1}, LhK;->b()I

    move-result v0

    .line 233
    :cond_0
    return v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, LgY;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 337
    const/4 v1, 0x7

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 338
    invoke-interface {v0}, LhM;->b()V

    .line 339
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, LgY;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 194
    const/4 v1, 0x3

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 195
    invoke-interface {v0, p1}, LhM;->a(I)V

    .line 196
    invoke-interface {v0, p2}, LhM;->a(I)V

    .line 197
    invoke-interface {v0}, LhM;->a()LhK;

    .line 199
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, LgY;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 343
    const/16 v1, 0x8

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 344
    invoke-interface {v0, p1}, LhM;->a(Z)V

    .line 345
    invoke-interface {v0}, LhM;->b()V

    .line 346
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, LgY;->c:LhS;

    invoke-virtual {v0}, LhS;->c()LhM;

    move-result-object v0

    .line 180
    const/4 v1, 0x6

    invoke-interface {v0, v1}, LhM;->a(I)V

    .line 181
    invoke-interface {v0, p1}, LhM;->a(Ljava/lang/String;)V

    .line 182
    invoke-interface {v0}, LhM;->a()LhK;

    move-result-object v1

    .line 183
    const/4 v0, 0x0

    .line 185
    invoke-interface {v1}, LhK;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v1}, LhK;->a()Z

    move-result v0

    .line 189
    :cond_0
    return v0
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, LgY;->c:LhS;

    invoke-virtual {v0}, LhS;->a()V

    .line 350
    iget-object v0, p0, LgY;->b:LhT;

    invoke-virtual {v0}, LhT;->a()V

    .line 351
    iget-object v0, p0, LgY;->a:LhF;

    invoke-virtual {v0}, LhF;->a()V

    .line 352
    return-void
.end method
