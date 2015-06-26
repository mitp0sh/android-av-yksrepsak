.class final Loy;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/DialogInterface;

.field private b:Landroid/widget/RadioButton;

.field private synthetic c:Lou;


# direct methods
.method public constructor <init>(Lou;Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Loy;->c:Lou;

    .line 899
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 900
    iput-object p2, p0, Loy;->a:Landroid/content/DialogInterface;

    .line 902
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Loy;->c:Lou;

    iget-object v0, v0, Lou;->m:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 918
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 925
    if-eqz p2, :cond_1

    .line 930
    :goto_0
    const v0, 0x7f0b0055

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 931
    iget-object v1, p0, Loy;->c:Lou;

    iget-object v1, v1, Lou;->m:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    const v0, 0x7f0b0056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 933
    iget-object v1, p0, Loy;->c:Lou;

    iget-object v1, v1, Lou;->n:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    const v0, 0x7f0b0057

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 935
    if-eqz v0, :cond_0

    .line 936
    iget-object v1, p0, Loy;->c:Lou;

    iget-boolean v1, v1, Lou;->A:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 937
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 938
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    iget-object v1, p0, Loy;->c:Lou;

    iget v1, v1, Lou;->B:I

    if-ne p1, v1, :cond_3

    .line 940
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 941
    iget-object v1, p0, Loy;->b:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 942
    iput-object v0, p0, Loy;->b:Landroid/widget/RadioButton;

    .line 949
    :cond_0
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 950
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    return-object p2

    .line 928
    :cond_1
    iget-object v0, p0, Loy;->c:Lou;

    iget-object v0, v0, Lou;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 936
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 945
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f0b0057

    .line 959
    instance-of v0, p1, Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    move-object p1, v0

    .line 963
    :cond_0
    if-nez p1, :cond_2

    .line 986
    :cond_1
    :goto_0
    return-void

    .line 967
    :cond_2
    iget-object v0, p0, Loy;->b:Landroid/widget/RadioButton;

    if-eq p1, v0, :cond_4

    .line 968
    iget-object v1, p0, Loy;->c:Lou;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lou;->B:I

    .line 969
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 970
    if-eqz v0, :cond_4

    .line 971
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 972
    iget-object v1, p0, Loy;->b:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    .line 973
    iget-object v1, p0, Loy;->b:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 975
    :cond_3
    iput-object v0, p0, Loy;->b:Landroid/widget/RadioButton;

    .line 979
    :cond_4
    iget-object v0, p0, Loy;->c:Lou;

    iget-object v0, v0, Lou;->q:LoO;

    if-eqz v0, :cond_5

    .line 980
    iget-object v0, p0, Loy;->c:Lou;

    iget-object v1, v0, Lou;->q:LoO;

    iget-object v2, p0, Loy;->a:Landroid/content/DialogInterface;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, LoO;->a(Landroid/content/DialogInterface;I)V

    .line 982
    :cond_5
    iget-object v0, p0, Loy;->c:Lou;

    iget-object v0, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Loy;->c:Lou;

    iget-object v1, v0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p0, Loy;->a:Landroid/content/DialogInterface;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
