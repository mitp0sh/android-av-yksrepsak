.class public abstract Lfu;
.super LfC;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lfu;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, LfC;-><init>(Ljava/lang/String;Ljava/lang/String;ZLfJ;)V

    .line 17
    iput-boolean p3, p0, Lfu;->b:Z

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p2}, Lfu;->a(Z)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lfu;->b(Landroid/view/View;)Landroid/widget/CompoundButton;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 43
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lfu;->b:Z

    .line 26
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lfu;->b:Z

    return v0
.end method

.method public final a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lfu;->a()Z

    move-result v0

    .line 34
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lfu;->b(Landroid/view/View;)Landroid/widget/CompoundButton;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfu;->a(Z)V

    .line 34
    invoke-virtual {p0}, Lfu;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;)Landroid/widget/CompoundButton;
.end method
