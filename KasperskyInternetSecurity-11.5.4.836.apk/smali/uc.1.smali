.class final Luc;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private synthetic a:Lub;


# direct methods
.method public constructor <init>(Lub;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 200
    iput-object p1, p0, Luc;->a:Lub;

    .line 201
    const-string v0, "purchase.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 202
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 229
    const-string v0, "CREATE TABLE history(_id TEXT PRIMARY KEY, state INTEGER, productId TEXT, developerPayload TEXT, purchaseTime INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const-string v0, "CREATE TABLE purchased(_id TEXT PRIMARY KEY, quantity INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string v0, "CREATE TABLE licensed_items(raw_signature TEXT PRIMARY KEY, raw_data TEXT, activation_code TEXT, key_used INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 206
    invoke-static {p1}, Luc;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 219
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v0, "DROP TABLE IF EXISTS purchased"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 222
    const-string v0, "DROP TABLE IF EXISTS licensed_items"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Luc;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 226
    :cond_0
    return-void
.end method
