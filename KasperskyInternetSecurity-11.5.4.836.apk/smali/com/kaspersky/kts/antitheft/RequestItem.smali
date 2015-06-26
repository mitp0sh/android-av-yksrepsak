.class public Lcom/kaspersky/kts/antitheft/RequestItem;
.super Lcom/kaspersky/kts/antitheft/QueueItem;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4abb3a1eab74617eL


# instance fields
.field private mApi:I

.field private mJsonData:Ljava/lang/String;

.field private mUniqueRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kaspersky/kts/antitheft/QueueItem;-><init>()V

    .line 14
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/RequestItem;->mJsonData:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/kaspersky/kts/antitheft/RequestItem;->mApi:I

    .line 16
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/RequestItem;->mUniqueRequestId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getApi()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kaspersky/kts/antitheft/RequestItem;->mApi:I

    return v0
.end method

.method public getJsonData()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kaspersky/kts/antitheft/RequestItem;->mJsonData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/kaspersky/kts/antitheft/RequestItem;->getUniqueRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/RequestItem;->mUniqueRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkDependant()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
