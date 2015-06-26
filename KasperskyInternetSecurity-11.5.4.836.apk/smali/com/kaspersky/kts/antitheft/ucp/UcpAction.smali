.class public Lcom/kaspersky/kts/antitheft/ucp/UcpAction;
.super Lcom/kaspersky/kts/antitheft/ActionInfo;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;)V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;-><init>(Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;Z)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;->setActionId(Ljava/lang/String;)V

    .line 13
    return-void
.end method
