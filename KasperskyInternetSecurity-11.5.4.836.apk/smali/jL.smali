.class public final LjL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljm;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wcs.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wes.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wss.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "secsms.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sdk.dat"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "as.dat"

    aput-object v2, v0, v1

    sput-object v0, LjL;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, LjL;->b:Landroid/content/Context;

    .line 34
    const/4 v0, 0x4

    iput v0, p0, LjL;->c:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljl;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, LjL;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/io/File;

    sget-object v2, LjL;->a:[Ljava/lang/String;

    iget v3, p0, LjL;->c:I

    aget-object v2, v2, v3

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    :try_start_1
    invoke-interface {p1, v0}, Ljl;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 75
    return-void

    .line 68
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 69
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method

.method public final b(Ljl;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, LjL;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/io/File;

    sget-object v2, LjL;->a:[Ljava/lang/String;

    iget v3, p0, LjL;->c:I

    aget-object v2, v2, v3

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 49
    :try_start_0
    invoke-interface {p1, v0}, Ljl;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method
