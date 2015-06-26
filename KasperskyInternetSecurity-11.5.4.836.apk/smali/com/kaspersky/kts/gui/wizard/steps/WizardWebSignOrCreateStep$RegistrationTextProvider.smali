.class Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private synthetic b:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->b:Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->a:Z

    .line 79
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->a:Z

    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f070480

    .line 85
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0702ae

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->a:Z

    if-eqz v0, :cond_0

    .line 91
    const v0, 0x7f070481

    .line 93
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0702af

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardWebSignOrCreateStep$RegistrationTextProvider;->a:Z

    if-eqz v0, :cond_0

    .line 99
    const v0, 0x7f070482

    .line 101
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f070471

    goto :goto_0
.end method
