.class public abstract Lcom/kms/gui/KMSCommonUserActionActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# static fields
.field private static final g:[I


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I

.field private c:Z

.field private final d:Lns;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kms/gui/KMSCommonUserActionActivity;->g:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0b0051
        0x7f0b0052
        0x7f0b0053
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->c:Z

    .line 42
    new-instance v0, Lns;

    invoke-direct {v0, p0, v1}, Lns;-><init>(Lcom/kms/gui/KMSCommonUserActionActivity;B)V

    iput-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->d:Lns;

    .line 44
    iput-boolean v1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->e:Z

    .line 45
    iput-boolean v1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->f:Z

    .line 147
    return-void
.end method

.method private b(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->a:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lcom/kms/gui/KMSCommonUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->d:Lns;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-boolean v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->c:Z

    if-eqz v0, :cond_0

    .line 84
    packed-switch p2, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 89
    :pswitch_1
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0051
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic f()[I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/kms/gui/KMSCommonUserActionActivity;->g:[I

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public abstract a(I)V
.end method

.method protected final a(IIZ)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(I[Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method protected final a(I[Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->e:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currently only 3 actions are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->f:Z

    .line 109
    iput-object p2, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->a:[Ljava/lang/String;

    .line 110
    iput p1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->b:I

    .line 111
    iput-boolean p3, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->c:Z

    .line 112
    return-void
.end method

.method protected final a(Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;)V
    .locals 3

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->e:Z

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called after onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kms/gui/KMSCommonUserActionActivity$UserActionDialogStyle;->getBackgroundColorResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->e:Z

    .line 57
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->a:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 74
    :cond_0
    return-void

    .line 61
    :cond_1
    const v0, 0x7f03000d

    invoke-virtual {p0, v0, v2}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(II)V

    .line 63
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Lcom/kms/gui/KMSCommonUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    iget v1, p0, Lcom/kms/gui/KMSCommonUserActionActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move v0, v2

    .line 71
    :goto_0
    sget-object v1, Lcom/kms/gui/KMSCommonUserActionActivity;->g:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 72
    sget-object v1, Lcom/kms/gui/KMSCommonUserActionActivity;->g:[I

    aget v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/kms/gui/KMSCommonUserActionActivity;->b(II)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
