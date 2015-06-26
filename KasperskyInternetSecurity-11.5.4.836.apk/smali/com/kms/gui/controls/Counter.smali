.class public Lcom/kms/gui/controls/Counter;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput v0, p0, Lcom/kms/gui/controls/Counter;->a:I

    .line 20
    iput v0, p0, Lcom/kms/gui/controls/Counter;->b:I

    .line 21
    iput v0, p0, Lcom/kms/gui/controls/Counter;->c:I

    .line 29
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/Counter;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v2, p0, Lcom/kms/gui/controls/Counter;->a:I

    .line 20
    iput v2, p0, Lcom/kms/gui/controls/Counter;->b:I

    .line 21
    iput v2, p0, Lcom/kms/gui/controls/Counter;->c:I

    .line 35
    sget-object v0, Lng;->Counter:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/kms/gui/controls/Counter;->a:I

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/kms/gui/controls/Counter;->b:I

    .line 38
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/kms/gui/controls/Counter;->c:I

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/Counter;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 46
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    const v1, 0x7f03001e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/Counter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/Counter;->e:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/Counter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/Counter;->f:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/Counter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kms/gui/controls/Counter;->d:Landroid/widget/ImageView;

    .line 53
    iget v0, p0, Lcom/kms/gui/controls/Counter;->c:I

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kms/gui/controls/Counter;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/kms/gui/controls/Counter;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/kms/gui/controls/Counter;->a()V

    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/Counter;->setValue(I)V

    .line 66
    return-void
.end method

.method public setNoValueBackground(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/kms/gui/controls/Counter;->b:I

    .line 62
    return-void
.end method

.method public setValue(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    .line 70
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/Counter;->f:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 71
    iget v0, p0, Lcom/kms/gui/controls/Counter;->b:I

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kms/gui/controls/Counter;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kms/gui/controls/Counter;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/controls/Counter;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_1
    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/Counter;->f:Landroid/widget/TextView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 77
    iget v0, p0, Lcom/kms/gui/controls/Counter;->a:I

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/kms/gui/controls/Counter;->d:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kms/gui/controls/Counter;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/kms/gui/controls/Counter;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
