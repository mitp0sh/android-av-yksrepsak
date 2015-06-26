.class final Ljo;
.super Ljp;
.source "SourceFile"


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lhb;->a()Lhb;

    move-result-object v0

    invoke-virtual {v0}, Lhb;->b()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljp;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 15
    iput-object p2, p0, Ljo;->e:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Ljo;->f:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Ljo;->g:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x7

    return v0
.end method

.method final e()I
    .locals 5

    .prologue
    .line 22
    invoke-static {}, Lcom/kms/ksn/locator/ServiceLocator;->a()Lcom/kms/ksn/locator/ServiceLocator;

    move-result-object v0

    iget-object v1, p0, Ljo;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljo;->e:Ljava/lang/String;

    iget-object v3, p0, Ljo;->f:Ljava/lang/String;

    iget-object v4, p0, Ljo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kms/ksn/locator/ServiceLocator;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
