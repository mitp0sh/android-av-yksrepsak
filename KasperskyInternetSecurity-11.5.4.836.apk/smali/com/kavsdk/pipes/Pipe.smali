.class public Lcom/kavsdk/pipes/Pipe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/kavsdk/pipes/Pipe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kavsdk/pipes/Pipe;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kavsdk/pipes/Pipe;->b:Ljava/io/File;

    .line 21
    invoke-direct {p0, p1}, Lcom/kavsdk/pipes/Pipe;->mkfifo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    return-void
.end method

.method private native mkfifo(Ljava/lang/String;)Z
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    .line 33
    const/4 v2, 0x0

    .line 35
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/kavsdk/pipes/Pipe;->b:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :try_start_1
    invoke-static {p1, v1}, LbB;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 41
    return-void

    .line 38
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    .line 38
    :catchall_1
    move-exception v0

    goto :goto_0
.end method
