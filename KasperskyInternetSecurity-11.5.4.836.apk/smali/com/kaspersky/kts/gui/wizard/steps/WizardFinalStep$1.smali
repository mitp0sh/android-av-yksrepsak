.class Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;


# direct methods
.method constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$1;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;

    iput-object p2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final l(I)V
    .locals 5

    .prologue
    .line 85
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->u()LsY;

    move-result-object v1

    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsw;

    invoke-virtual {v0}, Lsw;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, LkA;

    iget-object v4, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep$1;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardFinalStep;

    invoke-direct {v3, v4}, LkA;-><init>(Lkz;)V

    invoke-interface {v1, v0, v2, v3}, LsY;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 89
    return-void
.end method
