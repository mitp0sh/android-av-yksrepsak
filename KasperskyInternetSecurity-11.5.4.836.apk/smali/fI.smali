.class public abstract LfI;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/kms/kmsshared/DefaultActionHandler$Action;

.field protected d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, LfI;->d:Z

    .line 19
    return-void
.end method

.method protected static a(Landroid/view/LayoutInflater;Landroid/view/View;II)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 56
    :goto_0
    return-object p1

    .line 54
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/view/LayoutInflater;Landroid/view/View;LfK;Ljava/lang/Object;)Landroid/view/View;
.end method

.method public final a(Lcom/kms/kmsshared/DefaultActionHandler$Action;)LfI;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, LfI;->a:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    .line 35
    return-object p0
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, LfI;->d:Z

    .line 27
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, LfI;->d:Z

    return v0
.end method

.method public final f()Lcom/kms/kmsshared/DefaultActionHandler$Action;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, LfI;->a:Lcom/kms/kmsshared/DefaultActionHandler$Action;

    return-object v0
.end method
