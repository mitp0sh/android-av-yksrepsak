.class final Ler;
.super Lek;
.source "SourceFile"


# instance fields
.field private synthetic a:Leq;


# direct methods
.method constructor <init>(Leq;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Ler;->a:Leq;

    invoke-direct {p0, p2, p3}, Lek;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Ler;->a:Leq;

    iget-object v0, v0, Leq;->a:Lcom/kaspersky/kts/antitheft/ActionInfo;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ActionInfo;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
