.class public Lcom/kaspersky/kts/antitheft/ActionInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private mActionId:Ljava/lang/String;

.field private mActionName:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

.field private mActionParams:Ljava/lang/String;

.field private mActionResult:I

.field private mIsSms:Z

.field private mPhone:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Z)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Unknown:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionName:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mState:I

    .line 31
    iput-boolean p2, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mIsSms:Z

    .line 32
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionName:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->Unknown:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    iput-object v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionName:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mState:I

    .line 26
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionName:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 28
    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionId:Ljava/lang/String;

    return-object v0
.end method

.method public getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionName:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    return-object v0
.end method

.method public getActionParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionParams:Ljava/lang/String;

    return-object v0
.end method

.method public getActionResult()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionResult:I

    return v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mState:I

    return v0
.end method

.method public isSms()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mIsSms:Z

    return v0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setActionName(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionName:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    .line 49
    return-void
.end method

.method public setActionParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionParams:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setActionResult(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mActionResult:I

    .line 57
    return-void
.end method

.method public setIsSms(Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mIsSms:Z

    .line 81
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mPhone:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/kaspersky/kts/antitheft/ActionInfo;->mState:I

    .line 65
    return-void
.end method
