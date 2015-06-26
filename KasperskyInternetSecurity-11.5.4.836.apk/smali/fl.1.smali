.class public final Lfl;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lfm;

.field private d:Z

.field private e:Lfs;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Landroid/view/LayoutInflater;Lfs;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Lfm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfm;-><init>(Lfl;B)V

    iput-object v0, p0, Lfl;->c:Lfm;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfl;->d:Z

    .line 68
    iput-object p1, p0, Lfl;->a:Ljava/util/Vector;

    .line 69
    iput-object p2, p0, Lfl;->b:Landroid/view/LayoutInflater;

    .line 70
    iput-object p3, p0, Lfl;->e:Lfs;

    .line 71
    return-void
.end method

.method static synthetic a(Lfl;)Lfs;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lfl;->e:Lfs;

    return-object v0
.end method

.method static synthetic b(Lfl;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lfl;->a:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Vector;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lfl;->a:Ljava/util/Vector;

    .line 76
    invoke-virtual {p0}, Lfl;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lfl;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lfl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 124
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lfl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    .line 130
    iget-object v1, p0, Lfl;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lfl;->c:Lfm;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2, v2, v3}, LfI;->a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lfl;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfI;

    invoke-virtual {v0}, LfI;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfl;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
