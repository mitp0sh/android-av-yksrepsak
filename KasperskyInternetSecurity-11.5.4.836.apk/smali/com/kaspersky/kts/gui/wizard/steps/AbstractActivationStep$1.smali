.class Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;

    invoke-virtual {v0}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->p()V

    .line 161
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep$1;->a:Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;->a(Lcom/kaspersky/kts/gui/wizard/steps/AbstractActivationStep;Z)Z

    .line 163
    :cond_0
    return-void
.end method
