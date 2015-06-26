.class final LiG;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/KeyEvent$DispatcherState;

.field private b:Lcom/kavsdk/secureinput/widget/KeyboardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/view/KeyEvent$DispatcherState;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p3, p0, LiG;->a:Landroid/view/KeyEvent$DispatcherState;

    .line 30
    invoke-direct {p0, p1}, LiG;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 40
    invoke-virtual {p0}, LiG;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 42
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 43
    :cond_0
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 44
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 49
    :goto_0
    invoke-virtual {p0}, LiG;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 50
    return-void

    .line 46
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 47
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 53
    invoke-virtual {p0}, LiG;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 62
    const-string v1, "InputMethod"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    invoke-virtual {p0}, LiG;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    invoke-virtual {p0}, LiG;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x108

    const/16 v2, 0x10a

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 75
    new-instance v0, Lcom/kavsdk/secureinput/widget/KeyboardView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    .line 76
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-static {}, LiF;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->setBackgroundColor(I)V

    .line 79
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-static {}, LiF;->i()I

    move-result v1

    invoke-static {}, LiF;->k()I

    move-result v2

    invoke-static {}, LiF;->j()I

    move-result v3

    invoke-static {}, LiF;->l()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kavsdk/secureinput/widget/KeyboardView;->setPadding(IIII)V

    .line 84
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-static {}, LiF;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Z)V

    .line 86
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-virtual {p0, v0}, LiG;->setContentView(Landroid/view/View;)V

    .line 87
    return-void
.end method


# virtual methods
.method final a()Lcom/kavsdk/secureinput/widget/KeyboardView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    return-object v0
.end method

.method public final a(Lir;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-virtual {v0, p1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Lir;)V

    .line 110
    return-void
.end method

.method public final a(Lix;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-virtual {v0, p1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a(Lix;)V

    .line 95
    return-void
.end method

.method final b()I
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-virtual {v0}, Lcom/kavsdk/secureinput/widget/KeyboardView;->a()Lir;

    move-result-object v0

    invoke-virtual {v0}, Lir;->b()I

    move-result v0

    iget-object v1, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-virtual {v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, LiG;->b:Lcom/kavsdk/secureinput/widget/KeyboardView;

    invoke-virtual {v1}, Lcom/kavsdk/secureinput/widget/KeyboardView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 36
    iget-object v0, p0, LiG;->a:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 37
    return-void
.end method

.method public final show()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, LiG;->b()I

    move-result v0

    invoke-direct {p0, v0}, LiG;->a(I)V

    .line 105
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 106
    return-void
.end method
