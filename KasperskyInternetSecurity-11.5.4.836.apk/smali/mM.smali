.class public final LmM;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnLongClickListener;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private volatile f:I

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/List;

.field private i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:LmT;

.field private l:Landroid/view/LayoutInflater;

.field private m:LmQ;

.field private n:Lgz;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;LmT;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput v1, p0, LmM;->f:I

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LmM;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LmM;->h:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, LmM;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    new-instance v0, LmQ;

    invoke-direct {v0, p0, v1}, LmQ;-><init>(LmM;B)V

    iput-object v0, p0, LmM;->m:LmQ;

    .line 54
    iput-object p1, p0, LmM;->a:Landroid/app/Activity;

    .line 55
    iput-object p3, p0, LmM;->b:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p4, p0, LmM;->c:Landroid/view/View$OnLongClickListener;

    .line 57
    iget-object v0, p0, LmM;->a:Landroid/app/Activity;

    const v1, 0x7f070317

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LmM;->d:Ljava/lang/String;

    .line 58
    iget-object v0, p0, LmM;->a:Landroid/app/Activity;

    const v1, 0x7f070327

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LmM;->e:Ljava/lang/String;

    .line 59
    iput-object p5, p0, LmM;->k:LmT;

    .line 60
    iput-object p2, p0, LmM;->l:Landroid/view/LayoutInflater;

    .line 61
    return-void
.end method

.method static synthetic a(LmM;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, LmM;->f:I

    return p1
.end method

.method static synthetic a(LmM;)Lgz;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LmM;->n:Lgz;

    return-object v0
.end method

.method static synthetic a(LmM;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, LmM;->h:Ljava/util/List;

    return-object p1
.end method

.method private a(LmS;)V
    .locals 4

    .prologue
    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p1, LmS;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, LmS;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, LmS;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p1, LmS;->e:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    iget v1, p1, LmS;->a:I

    iget v2, p0, LmM;->f:I

    sub-int/2addr v1, v2

    .line 132
    if-ltz v1, :cond_2

    iget-object v2, p0, LmM;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 133
    iget-object v0, p0, LmM;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgD;

    .line 136
    :cond_2
    if-eqz v0, :cond_3

    .line 137
    iget-object v1, p1, LmS;->b:Landroid/widget/TextView;

    iget-object v2, v0, LgD;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p1, LmS;->c:Landroid/widget/TextView;

    iget-object v2, v0, LgD;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p1, LmS;->d:Landroid/widget/TextView;

    iget-object v2, v0, LgD;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, LmM;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, LgD;->c:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p1, LmS;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_1
    iget-object v0, p1, LmS;->f:Landroid/widget/TextView;

    iget v1, p1, LmS;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v0, p1, LmS;->b:Landroid/widget/TextView;

    iget-object v1, p0, LmM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p1, LmS;->c:Landroid/widget/TextView;

    iget-object v1, p0, LmM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p1, LmS;->d:Landroid/widget/TextView;

    iget-object v1, p0, LmM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p1, LmS;->e:Landroid/widget/TextView;

    iget-object v1, p0, LmM;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(LmM;)LmT;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LmM;->k:LmT;

    return-object v0
.end method

.method static synthetic c(LmM;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic d(LmM;)LmQ;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LmM;->m:LmQ;

    return-object v0
.end method

.method static synthetic e(LmM;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LmM;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(LmM;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LmM;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic g(LmM;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, LmM;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(I)LgD;
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    iget v1, p0, LmM;->f:I

    sub-int v1, p1, v1

    .line 182
    if-ltz v1, :cond_0

    iget-object v2, p0, LmM;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 183
    iget-object v0, p0, LmM;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LgD;

    .line 185
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, LmM;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    .line 158
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    if-eqz p2, :cond_0

    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget v0, p0, LmM;->f:I

    iget-object v3, p0, LmM;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    .line 252
    iget v0, p0, LmM;->f:I

    if-lt p1, v0, :cond_3

    iget-object v0, p0, LmM;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v3, v0, :cond_3

    move v0, v2

    .line 253
    :goto_1
    if-nez v0, :cond_6

    .line 254
    add-int/lit8 v0, v3, -0xa

    if-lt p1, v0, :cond_5

    .line 255
    add-int/lit8 v0, p1, 0x32

    add-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    .line 256
    iget-object v0, p0, LmM;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    .line 257
    iget-object v0, p0, LmM;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    .line 268
    :goto_2
    if-eqz v2, :cond_0

    .line 269
    if-gez v0, :cond_2

    move v0, v1

    .line 272
    :cond_2
    iget-object v1, p0, LmM;->m:LmQ;

    invoke-virtual {v1, v0}, LmQ;->a(I)V

    .line 273
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, LmM;->m:LmQ;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 252
    goto :goto_1

    .line 259
    :cond_4
    add-int/lit8 v0, p1, -0x32

    goto :goto_2

    .line 262
    :cond_5
    iget v0, p0, LmM;->f:I

    if-eqz v0, :cond_6

    add-int/lit8 v0, p1, -0xa

    iget v3, p0, LmM;->f:I

    if-gt v0, v3, :cond_6

    .line 263
    add-int/lit8 v0, p1, -0x32

    .line 264
    goto :goto_2

    :cond_6
    move v0, v1

    move v2, v1

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, LmM;->k:LmT;

    invoke-interface {v0}, LmT;->b()V

    .line 190
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LmN;

    invoke-direct {v1, p0, p1}, LmN;-><init>(LmM;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, LmM;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, LmM;->n:Lgz;

    if-nez v0, :cond_1

    .line 165
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->w()Lcom/kms/kmsshared/KMSApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KMSApplication is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->v()Lgz;

    move-result-object v0

    iput-object v0, p0, LmM;->n:Lgz;

    .line 171
    :cond_1
    iget-object v0, p0, LmM;->k:LmT;

    invoke-interface {v0}, LmT;->b()V

    .line 172
    iget-object v0, p0, LmM;->m:LmQ;

    iget v1, p0, LmM;->f:I

    invoke-virtual {v0, v1}, LmQ;->a(I)V

    .line 174
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    .line 175
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, LmM;->m:LmQ;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, LmM;->k:LmT;

    invoke-interface {v0}, LmT;->b()V

    .line 225
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LmP;

    invoke-direct {v1, p0, p1}, LmP;-><init>(LmM;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, LmM;->k:LmT;

    invoke-interface {v0}, LmT;->b()V

    .line 211
    iget-object v0, p0, LmM;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LmO;

    invoke-direct {v1, p0}, LmO;-><init>(LmM;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, LmM;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 83
    .line 85
    if-eqz p2, :cond_1

    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LmS;

    .line 88
    if-eqz v0, :cond_4

    .line 89
    iput p1, v0, LmS;->a:I

    move-object v1, v0

    move-object v0, p2

    .line 105
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 116
    :goto_1
    return-object v0

    .line 92
    :cond_1
    iget-object v0, p0, LmM;->l:Landroid/view/LayoutInflater;

    const v1, 0x7f030086

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    if-eqz v0, :cond_3

    .line 94
    new-instance v3, LmS;

    invoke-direct {v3, p0, v4}, LmS;-><init>(LmM;B)V

    .line 95
    iput p1, v3, LmS;->a:I

    .line 96
    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, LmS;->b:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, LmS;->c:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0b0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, LmS;->d:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, LmS;->e:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0b0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, LmS;->f:Landroid/widget/TextView;

    .line 101
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 113
    iget-object v2, p0, LmM;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, LmM;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    invoke-direct {p0, v1}, LmM;->a(LmS;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0

    :cond_4
    move-object v1, v0

    move-object v0, p2

    goto :goto_0
.end method
