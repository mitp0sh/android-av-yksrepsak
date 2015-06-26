.class public final LqU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LqJ;
.implements LqV;
.implements LrL;


# instance fields
.field private a:LrF;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x3

    iput v0, p0, LqU;->d:I

    .line 21
    iput-object p1, p0, LqU;->b:Ljava/lang/String;

    .line 22
    iput-object p2, p0, LqU;->c:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private a(Lcom/kms/kmsdaemon/KMSDaemon;)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/kms/kmsdaemon/KMSDaemon;->a()LrF;

    move-result-object v0

    iput-object v0, p0, LqU;->a:LrF;

    .line 53
    iget v0, p0, LqU;->d:I

    if-lez v0, :cond_1

    .line 55
    iget v0, p0, LqU;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LqU;->d:I

    .line 56
    iget-object v0, p0, LqU;->a:LrF;

    invoke-virtual {v0}, LrF;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LqU;->a:LrF;

    invoke-virtual {v0}, LrF;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, LqU;->b:Ljava/lang/String;

    iget-object v1, p0, LqU;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;LqV;)V

    .line 65
    :cond_0
    iget-object v0, p0, LqU;->a:LrF;

    invoke-virtual {v0, p0}, LrF;->a(LrL;)V

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 30
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v1

    .line 35
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 38
    :cond_0
    if-nez v1, :cond_2

    .line 40
    invoke-virtual {v0, p0}, Lcom/kms/kmsshared/KMSApplication;->a(LqJ;)V

    .line 47
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_2
    invoke-direct {p0, v1}, LqU;->a(Lcom/kms/kmsdaemon/KMSDaemon;)V

    goto :goto_0
.end method

.method public final a(Landroid/telephony/ServiceState;)Z
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, LqU;->b:Ljava/lang/String;

    iget-object v1, p0, LqU;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/kms/kmsshared/Utils;->a(Ljava/lang/String;Ljava/lang/String;LqV;)V

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 92
    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->o()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, LqU;->a(Lcom/kms/kmsdaemon/KMSDaemon;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method
