.class public final LeU;
.super LeT;
.source "SourceFile"


# instance fields
.field private final b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0, p1, p3}, LeT;-><init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    .line 136
    iput-object p2, p0, LeU;->b:Landroid/widget/EditText;

    .line 137
    iget-object v0, p0, LeU;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    invoke-direct {p0}, LeU;->a()V

    .line 139
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, LeU;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, LeU;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lra;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    invoke-virtual {p0, v0}, LeU;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_1
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    invoke-virtual {p0, v0}, LeU;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V

    goto :goto_0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, LeU;->a()V

    .line 144
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, LeT;->b()V

    .line 149
    iget-object v0, p0, LeU;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    return-void
.end method
