.class public final Lou;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public B:I

.field public C:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public D:Z

.field private E:Z

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Z

.field public m:[Ljava/lang/CharSequence;

.field public n:[Ljava/lang/CharSequence;

.field public o:Landroid/widget/ListAdapter;

.field public p:Landroid/content/DialogInterface$OnClickListener;

.field public q:LoO;

.field public r:Landroid/view/View;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:[Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput v2, p0, Lou;->c:I

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lou;->w:Z

    .line 686
    iput-boolean v1, p0, Lou;->A:Z

    .line 687
    iput v2, p0, Lou;->B:I

    .line 695
    iput-boolean v1, p0, Lou;->E:Z

    .line 696
    iput-boolean v1, p0, Lou;->D:Z

    .line 712
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lou;->a:Landroid/content/Context;

    .line 713
    iput-boolean v1, p0, Lou;->l:Z

    .line 714
    iget-object v0, p0, Lou;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lou;->b:Landroid/view/LayoutInflater;

    .line 715
    return-void
.end method

.method private b(Lcom/kms/gui/dialog/AlertController;)V
    .locals 8

    .prologue
    const v4, 0x7f0b0055

    const/4 v7, 0x1

    .line 775
    iget-object v0, p0, Lou;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/kms/gui/dialog/AlertController$RecycleListView;

    .line 777
    invoke-virtual {v6, v7}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setItemsCanFocus(Z)V

    .line 778
    iget-boolean v0, p0, Lou;->y:Z

    if-eqz v0, :cond_2

    .line 779
    new-instance v0, Lov;

    iget-object v2, p0, Lou;->a:Landroid/content/Context;

    const v3, 0x7f030009

    iget-object v5, p0, Lou;->m:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lov;-><init>(Lou;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/kms/gui/dialog/AlertController$RecycleListView;)V

    .line 841
    :goto_0
    invoke-static {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 856
    iget v0, p0, Lou;->B:I

    invoke-static {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;I)I

    .line 858
    iget-object v0, p0, Lou;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_7

    .line 859
    new-instance v0, Low;

    invoke-direct {v0, p0, p1}, Low;-><init>(Lou;Lcom/kms/gui/dialog/AlertController;)V

    invoke-virtual {v6, v0}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 882
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lou;->z:Z

    if-eqz v0, :cond_8

    .line 887
    invoke-virtual {v6, v7}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 891
    :cond_1
    :goto_2
    iget-boolean v0, p0, Lou;->E:Z

    iput-boolean v0, v6, Lcom/kms/gui/dialog/AlertController$RecycleListView;->a:Z

    .line 892
    invoke-static {p1, v6}, Lcom/kms/gui/dialog/AlertController;->a(Lcom/kms/gui/dialog/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 893
    return-void

    .line 795
    :cond_2
    iget-object v0, p0, Lou;->n:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    .line 823
    iget-boolean v0, p0, Lou;->z:Z

    if-eqz v0, :cond_3

    const v0, 0x7f03000a

    .line 825
    :goto_3
    iget-object v1, p0, Lou;->o:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lou;->o:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 823
    :cond_3
    const v0, 0x7f030008

    goto :goto_3

    .line 825
    :cond_4
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lou;->a:Landroid/content/Context;

    iget-object v3, p0, Lou;->m:[Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v0, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    .line 833
    :cond_5
    iget-boolean v0, p0, Lou;->z:Z

    .line 835
    iget-object v0, p0, Lou;->o:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lou;->o:Landroid/widget/ListAdapter;

    goto :goto_0

    :cond_6
    new-instance v0, Loy;

    invoke-static {p1}, Lcom/kms/gui/dialog/AlertController;->h(Lcom/kms/gui/dialog/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Loy;-><init>(Lou;Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 868
    :cond_7
    iget-object v0, p0, Lou;->C:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_0

    .line 869
    new-instance v0, Lox;

    invoke-direct {v0, p0, v6, p1}, Lox;-><init>(Lou;Lcom/kms/gui/dialog/AlertController$RecycleListView;Lcom/kms/gui/dialog/AlertController;)V

    invoke-virtual {v6, v0}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 888
    :cond_8
    iget-boolean v0, p0, Lou;->y:Z

    if-eqz v0, :cond_1

    .line 889
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/kms/gui/dialog/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/kms/gui/dialog/AlertController;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 718
    iget-object v0, p0, Lou;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lou;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 724
    :cond_0
    iget v0, p0, Lou;->c:I

    if-ltz v0, :cond_1

    .line 728
    iget v0, p0, Lou;->c:I

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(I)V

    .line 731
    :cond_1
    iget-object v0, p0, Lou;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lou;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 734
    :cond_2
    iget-object v0, p0, Lou;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 735
    const/4 v0, -0x1

    iget-object v1, p0, Lou;->f:Ljava/lang/CharSequence;

    iget-object v2, p0, Lou;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kms/gui/dialog/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 738
    :cond_3
    iget-object v0, p0, Lou;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 739
    const/4 v0, -0x2

    iget-object v1, p0, Lou;->h:Ljava/lang/CharSequence;

    iget-object v2, p0, Lou;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kms/gui/dialog/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 742
    :cond_4
    iget-object v0, p0, Lou;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 743
    const/4 v0, -0x3

    iget-object v1, p0, Lou;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Lou;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kms/gui/dialog/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 746
    :cond_5
    iget-object v0, p0, Lou;->m:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lou;->o:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 752
    :cond_6
    invoke-direct {p0, p1}, Lou;->b(Lcom/kms/gui/dialog/AlertController;)V

    .line 754
    :cond_7
    iget-object v0, p0, Lou;->r:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 755
    iget-boolean v0, p0, Lou;->w:Z

    if-eqz v0, :cond_9

    .line 756
    iget-object v1, p0, Lou;->r:Landroid/view/View;

    iget v2, p0, Lou;->s:I

    iget v3, p0, Lou;->t:I

    iget v4, p0, Lou;->u:I

    iget v5, p0, Lou;->v:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/view/View;IIII)V

    .line 763
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lou;->D:Z

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Z)V

    .line 772
    return-void

    .line 759
    :cond_9
    iget-object v0, p0, Lou;->r:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/kms/gui/dialog/AlertController;->a(Landroid/view/View;)V

    goto :goto_0
.end method
