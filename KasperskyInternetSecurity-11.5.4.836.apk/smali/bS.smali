.class public LbS;
.super LbO;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {p2}, LbS;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v1, v1, v0}, LbO;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 21
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)LbS;
    .locals 1

    .prologue
    .line 186
    new-instance v0, LbS;

    invoke-direct {v0, p0, p1}, LbS;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(LoN;Ljava/util/List;Z)LbS;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, LoN;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, LbS;->a(Landroid/content/Context;Ljava/util/List;)LbS;

    move-result-object v0

    .line 72
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LbS;->a(LoN;LbS;Z)V

    .line 74
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 26
    return-object p0
.end method

.method public static a(Landroid/support/v4/app/ListFragment;LbS;)V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, p1, v1}, LbS;->a(Landroid/widget/ListView;LbS;Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method private static a(Landroid/widget/ListView;LbS;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 149
    new-instance v0, LbU;

    invoke-direct {v0, p0, p1, p2}, LbU;-><init>(Landroid/widget/ListView;LbS;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    new-instance v0, LbV;

    invoke-direct {v0, p0, p2, p1}, LbV;-><init>(Landroid/widget/ListView;Landroid/content/Context;LbS;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 170
    return-void
.end method

.method static synthetic a(LbQ;LbS;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0, p1, p2}, LbS;->b(LbQ;LbS;Landroid/content/Context;)V

    return-void
.end method

.method private static a(LoN;LbS;Z)V
    .locals 2

    .prologue
    .line 94
    new-instance v0, LbT;

    invoke-direct {v0, p1}, LbT;-><init>(LbS;)V

    .line 102
    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p0, p1, v0}, LoN;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)LoN;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, LoN;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)LoN;

    goto :goto_0
.end method

.method private static b(LbQ;LbS;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 173
    instance-of v0, p1, LbW;

    if-eqz v0, :cond_0

    instance-of v0, p0, LbN;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 174
    check-cast v0, LbW;

    move-object v1, p0

    check-cast v1, LbN;

    invoke-virtual {v0, v1}, LbW;->a(LbN;)V

    .line 177
    :cond_0
    invoke-interface {p0}, LbQ;->g()LbR;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0, p1}, LbR;->a(LbS;)V

    .line 181
    :cond_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0, p1}, LbS;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbQ;

    .line 193
    if-nez p2, :cond_0

    .line 194
    invoke-virtual {p0}, LbS;->d()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, LbQ;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, LbS;->d()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p2}, LbQ;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
