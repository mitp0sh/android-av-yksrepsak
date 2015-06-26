.class final LgZ;
.super Lha;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/kavsdk/pipes/Pipe;

.field private synthetic c:Ljava/io/InputStream;

.field private synthetic d:LgY;


# direct methods
.method constructor <init>(LgY;Lcom/kavsdk/pipes/Pipe;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, LgZ;->d:LgY;

    iput-object p2, p0, LgZ;->b:Lcom/kavsdk/pipes/Pipe;

    iput-object p3, p0, LgZ;->c:Ljava/io/InputStream;

    invoke-direct {p0, p1}, Lha;-><init>(LgY;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, LgZ;->b:Lcom/kavsdk/pipes/Pipe;

    iget-object v1, p0, LgZ;->c:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/kavsdk/pipes/Pipe;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    iput-object v0, p0, LgZ;->a:Ljava/io/IOException;

    goto :goto_0
.end method
