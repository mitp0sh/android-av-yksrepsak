.class public final Lfa;
.super LeS;
.source "SourceFile"


# instance fields
.field private final b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

.field private final c:Landroid/widget/TextView;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;IIII)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LeS;-><init>(Landroid/widget/EditText;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;)V

    .line 271
    iput-object p2, p0, Lfa;->c:Landroid/widget/TextView;

    .line 272
    iput p4, p0, Lfa;->d:I

    .line 273
    iput p5, p0, Lfa;->e:I

    .line 274
    iput p6, p0, Lfa;->f:I

    .line 275
    iput p7, p0, Lfa;->g:I

    .line 276
    iput-object p3, p0, Lfa;->b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

    .line 278
    invoke-virtual {p0}, Lfa;->a()V

    .line 279
    return-void
.end method

.method private a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    iget-object v0, p0, Lfa;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lfa;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v1, p0, Lfa;->c:Landroid/widget/TextView;

    if-nez p3, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0, p1}, Lfa;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V

    .line 287
    iget-object v0, p0, Lfa;->b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lfa;->b:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;

    iget-object v1, p0, Lfa;->a:Landroid/widget/EditText;

    invoke-interface {v0, v1, p1}, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier;->a(Landroid/view/View;Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;)V

    .line 290
    :cond_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const v3, 0x7f020094

    .line 294
    iget-object v0, p0, Lfa;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lra;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    iget v1, p0, Lfa;->d:I

    invoke-direct {p0, v0, v3, v1}, Lfa;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;II)V

    .line 312
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 302
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    iget v1, p0, Lfa;->e:I

    invoke-direct {p0, v0, v3, v1}, Lfa;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;II)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {v0}, Lcom/kaspersky/kts/gui/controls/EditUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->CORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    const v1, 0x7f020093

    iget v2, p0, Lfa;->g:I

    invoke-direct {p0, v0, v1, v2}, Lfa;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;II)V

    goto :goto_0

    .line 310
    :cond_2
    sget-object v0, Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;->INCORRECT:Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;

    const v1, 0x7f020095

    iget v2, p0, Lfa;->f:I

    invoke-direct {p0, v0, v1, v2}, Lfa;->a(Lcom/kaspersky/kts/gui/controls/EditUtils$FormControlDataStateNotifier$ControlDataState;II)V

    goto :goto_0
.end method
