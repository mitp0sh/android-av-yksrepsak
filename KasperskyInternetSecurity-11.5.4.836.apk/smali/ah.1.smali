.class final Lah;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private synthetic a:Laf;


# direct methods
.method public constructor <init>(Laf;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 256
    iput-object p1, p0, Lah;->a:Laf;

    .line 257
    const-string v0, "bby_ipm_content.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 258
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 262
    const-string v0, "CREATE TABLE bby_ipm_message_settings (bby_ipm_dipslay_message_id INTEGER PRIMARY KEY,bby_message_start_date INTEGER,bby_message_stop_date INTEGER,bby_ipm_dipslay_message_type INTEGER,bby_message_seen_by_user INTEGER,bby_message_SKU TEXT)"

    .line 266
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 273
    const-string v0, "DROP TABLE IF EXISTS bby_ipm_message_settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p1}, Lah;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 278
    return-void
.end method
