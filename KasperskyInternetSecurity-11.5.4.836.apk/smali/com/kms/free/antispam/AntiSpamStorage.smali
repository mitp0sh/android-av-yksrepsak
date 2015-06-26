.class public Lcom/kms/free/antispam/AntiSpamStorage;
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

.field private static a:Lcom/kms/free/antispam/AntiSpamStorage; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBlackItems:Ljava/util/Vector;

.field private mWhiteItems:Ljava/util/Vector;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    .line 37
    return-void
.end method

.method private static a()Lcom/kms/free/antispam/AntiSpamStorage;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 47
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 48
    new-instance v2, Ljava/io/File;

    const-string v3, "antispamfolders.dat"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 61
    :goto_0
    if-nez v2, :cond_0

    .line 62
    new-instance v0, Lcom/kms/free/antispam/AntiSpamStorage;

    invoke-direct {v0}, Lcom/kms/free/antispam/AntiSpamStorage;-><init>()V

    .line 86
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 55
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v1

    .line 59
    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    goto :goto_0

    .line 66
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v0

    .line 72
    :goto_2
    if-nez v2, :cond_1

    .line 73
    new-instance v0, Lcom/kms/free/antispam/AntiSpamStorage;

    invoke-direct {v0}, Lcom/kms/free/antispam/AntiSpamStorage;-><init>()V

    goto :goto_1

    .line 67
    :catch_2
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    move-object v2, v1

    .line 71
    goto :goto_2

    .line 69
    :catch_3
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v1

    goto :goto_2

    .line 77
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamStorage;
    :try_end_3
    .catch Ljava/io/OptionalDataException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 78
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/OptionalDataException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_1

    .line 79
    :catch_4
    move-exception v1

    .line 80
    :goto_3
    invoke-virtual {v1}, Ljava/io/OptionalDataException;->printStackTrace()V

    goto :goto_1

    .line 81
    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 82
    :goto_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 83
    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 84
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 83
    :catch_7
    move-exception v1

    goto :goto_5

    .line 81
    :catch_8
    move-exception v1

    goto :goto_4

    .line 79
    :catch_9
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_3
.end method

.method private static a(Lcom/kms/free/antispam/AntiSpamItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 244
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kms/free/antispam/AntiSpamItem;->mCellEventTypes:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kms/free/antispam/AntiSpamItem;->mCellValidFields:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kms/free/antispam/AntiSpamItem;->mItemType:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/kms/free/antispam/AntiSpamItem;->mItemType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 248
    :cond_1
    return v0
.end method

.method private static a(Ljava/util/Vector;Lcom/kms/free/antispam/AntiSpamItem;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 270
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    .line 271
    if-eq v1, p2, :cond_1

    .line 273
    invoke-virtual {v0, p1}, Lcom/kms/free/antispam/AntiSpamItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const/4 v2, 0x1

    .line 279
    :cond_0
    return v2

    .line 268
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 223
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v3, ""

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 224
    new-instance v3, Ljava/io/File;

    const-string v4, "antispamfolders.dat"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 230
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :goto_0
    return v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    .line 235
    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 238
    goto :goto_0
.end method

.method public static instance()Lcom/kms/free/antispam/AntiSpamStorage;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/kms/free/antispam/AntiSpamStorage;->a:Lcom/kms/free/antispam/AntiSpamStorage;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/kms/free/antispam/AntiSpamStorage;->a()Lcom/kms/free/antispam/AntiSpamStorage;

    move-result-object v0

    sput-object v0, Lcom/kms/free/antispam/AntiSpamStorage;->a:Lcom/kms/free/antispam/AntiSpamStorage;

    .line 43
    :cond_0
    sget-object v0, Lcom/kms/free/antispam/AntiSpamStorage;->a:Lcom/kms/free/antispam/AntiSpamStorage;

    return-object v0
.end method


# virtual methods
.method public checkItemExists(Lcom/kms/free/antispam/AntiSpamItem;)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 252
    invoke-virtual {p0, p1, v0, v0}, Lcom/kms/free/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/free/antispam/AntiSpamItem;II)Z

    move-result v0

    return v0
.end method

.method public checkItemExists(Lcom/kms/free/antispam/AntiSpamItem;II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 256
    packed-switch p2, :pswitch_data_0

    .line 263
    iget-object v2, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/free/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/free/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 259
    :pswitch_0
    iget-object v2, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, p3}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/free/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/free/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v2, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-static {v2, p1, v3}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/free/antispam/AntiSpamItem;I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-static {v2, p1, p3}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Ljava/util/Vector;Lcom/kms/free/antispam/AntiSpamItem;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public create(Lcom/kms/free/antispam/AntiSpamItem;)I
    .locals 4

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 90
    invoke-static {p1}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Lcom/kms/free/antispam/AntiSpamItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kms/free/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/free/antispam/AntiSpamItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    iget v2, p1, Lcom/kms/free/antispam/AntiSpamItem;->mItemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 97
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    :goto_1
    invoke-direct {p0}, Lcom/kms/free/antispam/AntiSpamStorage;->b()I

    move-result v0

    goto :goto_0

    .line 98
    :cond_3
    iget v2, p1, Lcom/kms/free/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public delete(II)I
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 138
    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 139
    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 140
    invoke-direct {p0}, Lcom/kms/free/antispam/AntiSpamStorage;->b()I

    move-result v0

    .line 142
    :goto_1
    return v0

    .line 133
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 142
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public deleteAll(I)I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 162
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 163
    invoke-direct {p0}, Lcom/kms/free/antispam/AntiSpamStorage;->b()I

    move-result v0

    :goto_1
    return v0

    .line 153
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public getCount(I)I
    .locals 1

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 289
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItem(II)Lcom/kms/free/antispam/AntiSpamItem;
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 215
    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 217
    new-instance v1, Lcom/kms/free/antispam/AntiSpamItem;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    invoke-direct {v1, v0}, Lcom/kms/free/antispam/AntiSpamItem;-><init>(Lcom/kms/free/antispam/AntiSpamItem;)V

    return-object v1

    .line 206
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_0

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getIterator(I)Ljava/util/Enumeration;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 185
    new-instance v0, Lnh;

    invoke-direct {v0, p0}, Lnh;-><init>(Lcom/kms/free/antispam/AntiSpamStorage;)V

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v0

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 172
    new-instance v3, Lcom/kms/free/antispam/AntiSpamItem;

    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    invoke-direct {v3, v0}, Lcom/kms/free/antispam/AntiSpamItem;-><init>(Lcom/kms/free/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 171
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 178
    :pswitch_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v1, v0

    .line 179
    :goto_2
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 180
    new-instance v3, Lcom/kms/free/antispam/AntiSpamItem;

    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/free/antispam/AntiSpamItem;

    invoke-direct {v3, v0}, Lcom/kms/free/antispam/AntiSpamItem;-><init>(Lcom/kms/free/antispam/AntiSpamItem;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 182
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(IILcom/kms/free/antispam/AntiSpamItem;)I
    .locals 4

    .prologue
    const/4 v0, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x2

    .line 107
    invoke-static {p3}, Lcom/kms/free/antispam/AntiSpamStorage;->a(Lcom/kms/free/antispam/AntiSpamItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    if-ne p1, v3, :cond_2

    iget v2, p3, Lcom/kms/free/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v3, :cond_2

    .line 112
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mBlackItems:Ljava/util/Vector;

    .line 119
    :goto_1
    if-ltz p2, :cond_4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 120
    invoke-virtual {p0, p3, p1, p2}, Lcom/kms/free/antispam/AntiSpamStorage;->checkItemExists(Lcom/kms/free/antispam/AntiSpamItem;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 121
    goto :goto_0

    .line 113
    :cond_2
    if-ne p1, v1, :cond_0

    iget v2, p3, Lcom/kms/free/antispam/AntiSpamItem;->mItemType:I

    if-ne v2, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/kms/free/antispam/AntiSpamStorage;->mWhiteItems:Ljava/util/Vector;

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 124
    invoke-direct {p0}, Lcom/kms/free/antispam/AntiSpamStorage;->b()I

    move-result v0

    goto :goto_0

    .line 126
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method
