.class public final LcI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, LcI;->b:I

    .line 33
    iput-object p1, p0, LcI;->a:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, LcI;->f()V

    .line 35
    return-void
.end method

.method private a(Ljava/net/URL;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, LcI;->e:I

    .line 105
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    const/4 v0, 0x1

    iput v0, p0, LcI;->b:I

    .line 109
    iget v0, p0, LcI;->e:I

    if-gtz v0, :cond_0

    .line 110
    const/16 v0, 0x50

    iput v0, p0, LcI;->e:I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const/4 v0, 0x2

    iput v0, p0, LcI;->b:I

    .line 116
    iget v0, p0, LcI;->e:I

    if-gtz v0, :cond_0

    .line 117
    const/16 v0, 0x1bb

    iput v0, p0, LcI;->e:I

    goto :goto_0

    .line 120
    :cond_2
    const-string v1, "ftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    const/4 v0, 0x3

    iput v0, p0, LcI;->b:I

    .line 123
    iget v0, p0, LcI;->e:I

    if-gtz v0, :cond_0

    .line 124
    const/16 v0, 0x15

    iput v0, p0, LcI;->e:I

    goto :goto_0

    .line 127
    :cond_3
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :cond_4
    const/4 v0, 0x5

    iput v0, p0, LcI;->b:I

    .line 130
    iget v0, p0, LcI;->e:I

    if-gtz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput v0, p0, LcI;->e:I

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, LcI;->a:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, LcI;->a:Ljava/lang/String;

    iput-object v0, p0, LcI;->c:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LcI;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcI;->a:Ljava/lang/String;

    .line 92
    :goto_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, LcI;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0, v0}, LcI;->a(Ljava/net/URL;)V

    .line 95
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LcI;->d:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcI;->f:Ljava/lang/String;

    .line 97
    iget-object v0, p0, LcI;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "/"

    iput-object v0, p0, LcI;->f:Ljava/lang/String;

    .line 100
    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, LcI;->a:Ljava/lang/String;

    iget-object v1, p0, LcI;->a:Ljava/lang/String;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LcI;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, LcI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LcI;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LcI;->e:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, LcI;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, LcI;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 69
    if-ne p0, p1, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_0
    instance-of v0, p1, LcI;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, LcI;->a:Ljava/lang/String;

    check-cast p1, LcI;

    iget-object v1, p1, LcI;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LcI;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, LcI;->a:Ljava/lang/String;

    return-object v0
.end method
