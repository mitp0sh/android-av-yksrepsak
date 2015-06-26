.class public Lcom/amazonaws/auth/policy/Principal;
.super Ljava/lang/Object;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/auth/policy/Principal$Services;
    }
.end annotation


# static fields
.field public static final AllUsers:Lcom/amazonaws/auth/policy/Principal;


# instance fields
.field private final id:Ljava/lang/String;

.field private final provider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/amazonaws/auth/policy/Principal;

    const-string v1, "*"

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/policy/Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal;->AllUsers:Lcom/amazonaws/auth/policy/Principal;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/policy/Principal$Services;)V
    .locals 2
    .param p1, "service"    # Lcom/amazonaws/auth/policy/Principal$Services;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null AWS service name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/auth/policy/Principal$Services;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    .line 58
    const-string v0, "Service"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null AWS account ID specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    .line 72
    const-string v0, "AWS"

    iput-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal;->provider:Ljava/lang/String;

    return-object v0
.end method
