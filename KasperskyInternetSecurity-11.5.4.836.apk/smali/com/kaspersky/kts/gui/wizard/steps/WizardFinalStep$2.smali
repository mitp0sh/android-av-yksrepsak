.class Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$2;->a:Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, LoT;

    invoke-direct {v0}, LoT;-><init>()V

    invoke-virtual {v0}, LoT;->a()V

    .line 149
    return-void
.end method
