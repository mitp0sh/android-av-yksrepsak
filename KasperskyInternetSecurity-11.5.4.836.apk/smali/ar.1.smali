.class public Lar;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 38
    const-string v0, "ipm_content.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-object p1, p0, Lar;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static a(Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;)I
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentUrl:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;)I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    sget-object v1, Las;->a:[I

    invoke-virtual {p0}, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    return v0

    .line 104
    :pswitch_0
    const/4 v0, 0x1

    .line 105
    goto :goto_0

    .line 107
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lar;->b:Landroid/content/Context;

    const-string v1, "ipm_content.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 96
    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    const v0, 0x10000011

    goto :goto_0
.end method

.method public static a(I)Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    .line 116
    packed-switch p0, :pswitch_data_0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    goto :goto_0

    .line 121
    :pswitch_1
    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityLow:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;
    .locals 1

    .prologue
    .line 133
    if-nez p0, :cond_0

    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentUrl:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentString:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    goto :goto_0
.end method


# virtual methods
.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 65
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lar;->a:Ljava/lang/String;

    const-string v2, "getReadableDatabase() failed"

    invoke-static {v1, v2, v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lar;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 75
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    sget-object v1, Lar;->a:Ljava/lang/String;

    const-string v2, "getWritableDatabase() failed"

    invoke-static {v1, v2, v0}, Lcom/kms/kmsshared/KMSLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lar;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 44
    const-string v0, "CREATE TABLE ipm_display_content (ipm_dipslay_message_id INTEGER PRIMARY KEY AUTOINCREMENT,ipm_severity INTEGER,ipm_title TEXT,ipm_announcment TEXT,ipm_content TEXT,ipm_content_type INTEGER,ipm_message_force_show INTEGER)"

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 55
    const-string v0, "DROP TABLE IF EXISTS ipm_display_content"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lar;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 60
    return-void
.end method
