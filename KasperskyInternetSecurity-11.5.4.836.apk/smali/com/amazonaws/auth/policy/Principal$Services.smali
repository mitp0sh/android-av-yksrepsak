.class public final enum Lcom/amazonaws/auth/policy/Principal$Services;
.super Ljava/lang/Enum;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/auth/policy/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Services"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/auth/policy/Principal$Services;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

.field public static final enum AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;


# instance fields
.field private serviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AWSDataPipeline"

    const-string v2, "datapipeline.amazonaws.com"

    invoke-direct {v0, v1, v3, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 104
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AmazonElasticTranscoder"

    const-string v2, "elastictranscoder.amazonaws.com"

    invoke-direct {v0, v1, v4, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 105
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AmazonEC2"

    const-string v2, "ec2.amazonaws.com"

    invoke-direct {v0, v1, v5, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 106
    new-instance v0, Lcom/amazonaws/auth/policy/Principal$Services;

    const-string v1, "AWSOpsWorks"

    const-string v2, "opsworks.amazonaws.com"

    invoke-direct {v0, v1, v6, v2}, Lcom/amazonaws/auth/policy/Principal$Services;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

    .line 101
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazonaws/auth/policy/Principal$Services;

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AWSDataPipeline:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonElasticTranscoder:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AmazonEC2:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazonaws/auth/policy/Principal$Services;->AWSOpsWorks:Lcom/amazonaws/auth/policy/Principal$Services;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput-object p3, p0, Lcom/amazonaws/auth/policy/Principal$Services;->serviceId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;
    .locals 5
    .param p0, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p0, :cond_1

    .line 125
    invoke-static {}, Lcom/amazonaws/auth/policy/Principal$Services;->values()[Lcom/amazonaws/auth/policy/Principal$Services;

    move-result-object v0

    .local v0, "arr$":[Lcom/amazonaws/auth/policy/Principal$Services;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 126
    .local v3, "s":Lcom/amazonaws/auth/policy/Principal$Services;
    invoke-virtual {v3}, Lcom/amazonaws/auth/policy/Principal$Services;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    .end local v0    # "arr$":[Lcom/amazonaws/auth/policy/Principal$Services;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Lcom/amazonaws/auth/policy/Principal$Services;
    :goto_1
    return-object v3

    .line 125
    .restart local v0    # "arr$":[Lcom/amazonaws/auth/policy/Principal$Services;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "s":Lcom/amazonaws/auth/policy/Principal$Services;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "arr$":[Lcom/amazonaws/auth/policy/Principal$Services;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "s":Lcom/amazonaws/auth/policy/Principal$Services;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v0, Lcom/amazonaws/auth/policy/Principal$Services;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/auth/policy/Principal$Services;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/auth/policy/Principal$Services;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/amazonaws/auth/policy/Principal$Services;->$VALUES:[Lcom/amazonaws/auth/policy/Principal$Services;

    invoke-virtual {v0}, [Lcom/amazonaws/auth/policy/Principal$Services;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/auth/policy/Principal$Services;

    return-object v0
.end method


# virtual methods
.method public getServiceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/amazonaws/auth/policy/Principal$Services;->serviceId:Ljava/lang/String;

    return-object v0
.end method
