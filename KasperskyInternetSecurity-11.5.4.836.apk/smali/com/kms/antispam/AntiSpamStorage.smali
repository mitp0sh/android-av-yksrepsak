.class public Lcom/kms/antispam/AntiSpamStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STORAGE_CANT_FIND_ITEM:I = 0x3

.field public static final STORAGE_FAIL:I = 0x1

.field public static final STORAGE_GOOD:I = 0x0

.field public static final STORAGE_INVALID_ITEM:I = 0x4

.field public static final STORAGE_ITEM_ALREADY_EXISTS:I = 0x2

.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/kms/antispam/AntiSpamStorage; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBlackItems:Ljava/util/Vector;

.field private mWhiteItems:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kms/antispam/AntiSpamStorage;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    .line 37
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->c()V

    .line 68
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->b()V

    .line 69
    return-void
.end method

.method private static a(Lcom/kms/antispam/AntiSpamItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 220
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 224
    :cond_1
    return v0
.end method

.method private static a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 244
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    .line 245
    if-eq v1, p2, :cond_1

    .line 246
    invoke-virtual {v0, p1}, Lcom/kms/antispam/AntiSpamItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const/4 v2, 0x1

    .line 252
    :cond_0
    return v2

    .line 243
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antispam/AntispamEventType;->WhiteListChanged:Lcom/kms/antispam/AntispamEventType;

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antispam/AntispamEventType;->newEvent(Ljava/lang/Object;)Llb;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 73
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/antispam/AntispamEventType;->BlackListChanged:Lcom/kms/antispam/AntispamEventType;

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/antispam/AntispamEventType;->newEvent(Ljava/lang/Object;)Llb;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 77
    return-void
.end method

.method public static declared-synchronized createEmptyStorage()Lcom/kms/antispam/AntiSpamStorage;
    .locals 2

    .prologue
    .line 87
    const-class v1, Lcom/kms/antispam/AntiSpamStorage;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/kms/antispam/AntiSpamStorage;

    invoke-direct {v0}, Lcom/kms/antispam/AntiSpamStorage;-><init>()V

    .line 88
    sput-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static d()Lcom/kms/antispam/AntiSpamStorage;
    .locals 3

    .prologue
    .line 80
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/File;

    const-string v2, "antispamfolders.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-static {v1}, Ly;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamStorage;

    .line 83
    if-nez v0, :cond_0

    new-instance v0, Lcom/kms/antispam/AntiSpamStorage;

    invoke-direct {v0}, Lcom/kms/antispam/AntiSpamStorage;-><init>()V

    :cond_0
    return-object v0
.end method

.method private e()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->a()V

    .line 213
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/io/File;

    const-string v3, "antispamfolders.dat"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    invoke-static {v2, p0}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fix()V
    .locals 5

    .prologue
    .line 273
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/io/File;

    const-string v2, "antispamfolders.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 277
    new-instance v0, Llz;

    const-wide/16 v2, 0x2

    const-class v4, Lcom/kms/antispam/AntiSpamStorage;

    invoke-direct {v0, v2, v3, v4}, Llz;-><init>(JLjava/lang/Class;)V

    .line 279
    invoke-static {v1, v0}, Ly;->b(Ljava/io/File;Lz;)Z

    .line 280
    invoke-virtual {v0}, Llz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamStorage;

    .line 281
    invoke-static {v1, v0}, Ly;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    .line 282
    return-void
.end method

.method public static declared-synchronized instance()Lcom/kms/antispam/AntiSpamStorage;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/kms/antispam/AntiSpamStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 42
    :try_start_1
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->d()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    sput-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    .line 46
    :try_start_3
    invoke-static {}, Lst;->b()V

    .line 47
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->d()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    sput-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->createEmptyStorage()Lcom/kms/antispam/AntiSpamStorage;

    .line 50
    sget-object v0, Lcom/kms/antispam/AntiSpamStorage;->b:Lcom/kms/antispam/AntiSpamStorage;

    invoke-direct {v0}, Lcom/kms/antispam/AntiSpamStorage;->e()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkItemExists(Lcom/kms/antispam/AntiSpamItem;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 228
    invoke-virtual {p0, p1, v0, v0}, Lcom/kms/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/antispam/AntiSpamItem;II)Z

    move-result v0

    return v0
.end method

.method public checkItemExists(Lcom/kms/antispam/AntiSpamItem;II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 232
    packed-switch p2, :pswitch_data_0

    .line 238
    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 234
    :pswitch_0
    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, p3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, p3}, Lcom/kms/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public create(Lcom/kms/antispam/AntiSpamItem;)I
    .locals 4

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 92
    invoke-static {p1}, Lcom/kms/antispam/AntiSpamStorage;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kms/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_2
    iget v2, p1, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 99
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    :goto_1
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->e()I

    move-result v0

    goto :goto_0

    .line 100
    :cond_3
    iget v2, p1, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public delete(II)I
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 140
    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 141
    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 142
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->e()I

    move-result v0

    .line 144
    :goto_1
    return v0

    .line 135
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 144
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public deleteAll(I)I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 158
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 159
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->e()I

    move-result v0

    :goto_1
    return v0

    .line 152
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getCount(I)I
    .locals 1

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 262
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 260
    :pswitch_1
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(II)Lcom/kms/antispam/AntiSpamItem;
    .locals 2

    .prologue
    .line 196
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 204
    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 205
    new-instance v1, Lcom/kms/antispam/AntiSpamItem;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v1, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/antispam/AntiSpamItem;)V

    return-object v1

    .line 198
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 207
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getIterator(I)Ljava/util/Enumeration;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    packed-switch p1, :pswitch_data_0

    .line 179
    new-instance v0, Lla;

    invoke-direct {v0, p0}, Lla;-><init>(Lcom/kms/antispam/AntiSpamStorage;)V

    :goto_0
    return-object v0

    .line 165
    :pswitch_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v0

    .line 166
    :goto_1
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 167
    new-instance v3, Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v3, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v0

    .line 173
    :goto_2
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 174
    new-instance v3, Lcom/kms/antispam/AntiSpamItem;

    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v3, v0}, Lcom/kms/antispam/AntiSpamItem;-><init>(Lcom/kms/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 176
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public importItems(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lcom/kms/antispam/AntiSpamStorage;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    iput-object p1, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 61
    iput-object p2, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    .line 62
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->e()I

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public update(IILcom/kms/antispam/AntiSpamItem;)I
    .locals 4

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x2

    .line 109
    invoke-static {p3}, Lcom/kms/antispam/AntiSpamStorage;->a(Lcom/kms/antispam/AntiSpamItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    if-ne p1, v3, :cond_2

    iget v2, p3, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v3, :cond_2

    .line 114
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 121
    :goto_1
    if-ltz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 122
    invoke-virtual {p0, p3, p1, p2}, Lcom/kms/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/antispam/AntiSpamItem;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 123
    goto :goto_0

    .line 115
    :cond_2
    if-ne p1, v1, :cond_0

    iget v2, p3, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/kms/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 126
    invoke-direct {p0}, Lcom/kms/antispam/AntiSpamStorage;->e()I

    move-result v0

    goto :goto_0

    .line 128
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method
