.class public final Lcom/amazonaws/RequestClientOptions;
.super Ljava/lang/Object;
.source "RequestClientOptions.java"


# instance fields
.field private clientMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createClientMarkerString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "clientMarker"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->clientMarker:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->clientMarker:Ljava/lang/String;

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/RequestClientOptions;->clientMarker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addClientMarker(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientMarker"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->clientMarker:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/amazonaws/RequestClientOptions;->clientMarker:Ljava/lang/String;

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/RequestClientOptions;->createClientMarkerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/RequestClientOptions;->clientMarker:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public getClientMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazonaws/RequestClientOptions;->clientMarker:Ljava/lang/String;

    return-object v0
.end method
