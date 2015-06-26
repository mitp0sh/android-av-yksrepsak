.class public abstract LbK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements LbN;
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Z

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/Object;

.field private h:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, LbK;-><init>(Ljava/lang/String;Ljava/lang/Object;IZ)V

    .line 63
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, LbK;->b:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, LbK;->f:Ljava/lang/CharSequence;

    .line 59
    iput-boolean v1, p0, LbK;->h:Z

    .line 66
    iput-object p1, p0, LbK;->c:Ljava/lang/String;

    .line 67
    iput p3, p0, LbK;->d:I

    .line 68
    iput-object p2, p0, LbK;->g:Ljava/lang/Object;

    .line 69
    iput-boolean p4, p0, LbK;->e:Z

    .line 70
    return-void
.end method

.method private a(LbK;)I
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, LbK;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LbK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Landroid/view/ViewGroup;)LbX;
    .locals 2

    .prologue
    .line 95
    new-instance v0, LbX;

    invoke-virtual {p0}, LbK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LbX;-><init>(Ljava/lang/String;Landroid/view/View;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 107
    invoke-direct {p0, p2}, LbK;->a(Landroid/view/ViewGroup;)LbX;

    move-result-object v1

    .line 109
    iget-boolean v0, p0, LbK;->b:Z

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 110
    iget-boolean v0, p0, LbK;->b:Z

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 113
    :cond_0
    iget-boolean v0, p0, LbK;->e:Z

    if-eqz v0, :cond_1

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_4

    .line 115
    iget-boolean v0, p0, LbK;->a:Z

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setActivated(Z)V

    .line 121
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LbX;

    .line 122
    invoke-virtual {v1, v0}, LbX;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, LbK;->h:Z

    if-eqz v2, :cond_3

    .line 123
    :cond_2
    if-eqz v0, :cond_5

    .line 124
    invoke-virtual {v0, v1}, LbX;->a(LbX;)V

    .line 129
    :goto_1
    iget-object v1, p0, LbK;->g:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, LbK;->a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, LbK;->f:Ljava/lang/CharSequence;

    .line 130
    iget-object v1, p0, LbK;->g:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, LbK;->a(Ljava/lang/Object;Landroid/content/Context;LbX;)V

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, LbK;->h:Z

    .line 138
    :cond_3
    return-void

    .line 117
    :cond_4
    iget-boolean v0, p0, LbK;->a:Z

    invoke-static {p1, p2, v0}, LbK;->a(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    if-eqz p2, :cond_0

    .line 238
    invoke-static {p1, v0}, LbK;->b(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {p1, v0}, LbK;->a(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private static a(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 245
    const-class v0, Landroid/widget/TextView;

    new-instance v1, LbL;

    invoke-direct {v1, p1}, LbL;-><init>(Landroid/content/res/Resources;)V

    invoke-static {p0, v0, v1}, LbI;->a(Landroid/view/View;Ljava/lang/Class;LbJ;)V

    .line 251
    invoke-static {}, LbK;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 252
    return-void
.end method

.method private static b(Landroid/view/ViewGroup;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 255
    const-class v0, Landroid/widget/TextView;

    new-instance v1, LbM;

    invoke-direct {v1, p1}, LbM;-><init>(Landroid/content/res/Resources;)V

    invoke-static {p0, v0, v1}, LbI;->a(Landroid/view/View;Ljava/lang/Class;LbJ;)V

    .line 261
    invoke-static {}, LbK;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 262
    return-void
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, LbK;->j()I

    move-result v0

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, LbK;->k()I

    move-result v0

    return v0
.end method

.method private static i()I
    .locals 1

    .prologue
    .line 265
    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/KisTheme;->getSelectedBackgroundColorResId()I

    move-result v0

    return v0
.end method

.method private static j()I
    .locals 1

    .prologue
    .line 269
    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/KisTheme;->getNotSelectedTextColorResId()I

    move-result v0

    return v0
.end method

.method private static k()I
    .locals 1

    .prologue
    .line 273
    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/KisTheme;->getSelectedTextColorResId()I

    move-result v0

    return v0
.end method

.method private static l()I
    .locals 1

    .prologue
    .line 277
    invoke-static {}, LjJ;->c()Lcom/kms/KisTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/KisTheme;->getNotSelectedBackgroundColorResId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .prologue
    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, LbK;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 89
    invoke-direct {p0, p1, v0}, LbK;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 90
    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 76
    instance-of v1, v0, LbX;

    if-eqz v1, :cond_0

    check-cast v0, LbX;

    invoke-virtual {v0}, LbX;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LbK;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, LbK;->a(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 80
    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, LbK;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LbK;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LbK;->g:Ljava/lang/Object;

    invoke-virtual {p0, v1}, LbK;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected abstract a(Ljava/lang/Object;Landroid/content/Context;LbX;)V
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, LbK;->g:Ljava/lang/Object;

    return-object v0
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, LbK;->g:Ljava/lang/Object;

    invoke-static {v0, p1}, LbB;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iput-object p1, p0, LbK;->g:Ljava/lang/Object;

    .line 169
    invoke-virtual {p0}, LbK;->c()V

    .line 171
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, LbK;->h:Z

    .line 179
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, LbK;

    invoke-direct {p0, p1}, LbK;->a(LbK;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, LbK;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 183
    if-ne p0, p1, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 187
    :cond_0
    instance-of v0, p1, LbK;

    if-nez v0, :cond_1

    .line 188
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_1
    check-cast p1, LbK;

    .line 193
    iget-object v0, p0, LbK;->g:Ljava/lang/Object;

    iget-object v1, p1, LbK;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, LbK;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, LbK;->a:Z

    return v0
.end method

.method public final setChecked(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, LbK;->a:Z

    .line 148
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, LbK;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toggle()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, LbK;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, LbK;->a:Z

    .line 158
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
