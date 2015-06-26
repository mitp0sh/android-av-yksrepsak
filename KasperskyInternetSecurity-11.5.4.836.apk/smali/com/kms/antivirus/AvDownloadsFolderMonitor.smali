.class public Lcom/kms/antivirus/AvDownloadsFolderMonitor;
.super Landroid/os/FileObserver;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lmr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".apk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmr;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x88

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p2, p0, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->b:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->c:Lmr;

    .line 20
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->c:Lmr;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 37
    :cond_0
    return-void

    .line 27
    :cond_1
    sget-object v1, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 28
    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    iget-object v3, p0, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->c:Lmr;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/kms/antivirus/AvDownloadsFolderMonitor;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmr;->a(Ljava/lang/String;)V

    .line 27
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
