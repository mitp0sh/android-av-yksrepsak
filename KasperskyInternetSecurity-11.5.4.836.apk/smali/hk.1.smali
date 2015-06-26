.class public final Lhk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LhH;


# instance fields
.field private final a:LgT;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LgT;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhk;-><init>(LgT;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(LgT;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lhk;->a:LgT;

    .line 23
    iput-object p2, p0, Lhk;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/kavsdk/antivirus/ThreatType;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/kavsdk/antivirus/ThreatType;->None:Lcom/kavsdk/antivirus/ThreatType;

    .line 53
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 54
    :cond_0
    invoke-static {p1}, Lhp;->a(Ljava/lang/String;)Lcom/kavsdk/antivirus/ThreatType;

    move-result-object v0

    .line 56
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(LhK;LhL;)V
    .locals 8

    .prologue
    .line 29
    invoke-interface {p1}, LhK;->b()I

    move-result v3

    .line 30
    invoke-interface {p1}, LhK;->b()I

    move-result v4

    .line 31
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-interface {p1}, LhK;->b()I

    .line 34
    invoke-interface {p1}, LhK;->d()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, LbC;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 43
    :cond_0
    invoke-static {v3, v5}, Lhk;->a(ILjava/lang/String;)Lcom/kavsdk/antivirus/ThreatType;

    move-result-object v6

    .line 44
    iget-object v2, p0, Lhk;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Lho;

    invoke-direct {v2, v5, v0, v1}, Lho;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 47
    :goto_0
    iget-object v1, p0, Lhk;->a:LgT;

    invoke-interface {v1, v3, v4, v0, v6}, LgT;->a(IILgH;Lcom/kavsdk/antivirus/ThreatType;)I

    move-result v0

    .line 48
    invoke-interface {p2, v0}, LhL;->a(I)V

    .line 49
    return-void

    .line 44
    :cond_1
    new-instance v2, LgS;

    iget-object v7, p0, Lhk;->b:Ljava/lang/String;

    invoke-direct {v2, v5, v0, v1, v7}, LgS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method
