.class public final Lit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field e:Ljava/util/ArrayList;

.field public f:I

.field public g:I

.field private h:Lir;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lir;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit;->e:Ljava/util/ArrayList;

    .line 183
    iput-object p2, p0, Lit;->h:Lir;

    .line 185
    const-string v0, "Keyboard"

    invoke-static {v0}, LiU;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 186
    array-length v1, v0

    if-lez v1, :cond_0

    .line 188
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    const-string v1, "Keyboard_keyWidth"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lir;->a(Lir;)I

    move-result v2

    invoke-static {p2}, Lir;->b(Lir;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lit;->a:I

    .line 195
    const-string v1, "Keyboard_keyHeight"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lir;->c(Lir;)I

    move-result v2

    invoke-static {p2}, Lir;->d(Lir;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lit;->b:I

    .line 199
    const-string v1, "Keyboard_horizontalGap"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lir;->a(Lir;)I

    move-result v2

    invoke-static {p2}, Lir;->e(Lir;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lit;->c:I

    .line 203
    const-string v1, "Keyboard_verticalGap"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lir;->c(Lir;)I

    move-result v2

    invoke-static {p2}, Lir;->f(Lir;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lit;->d:I

    .line 207
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    :cond_0
    const-string v0, "Keyboard_Row"

    invoke-static {v0}, LiU;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 211
    array-length v1, v0

    if-lez v1, :cond_1

    .line 213
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 216
    const-string v1, "Keyboard_Row_rowEdgeFlags"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lit;->f:I

    .line 217
    const-string v1, "Keyboard_Row_keyboardMode"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lit;->g:I

    .line 218
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    :cond_1
    return-void
.end method

.method static synthetic a(Lit;)Lir;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lit;->h:Lir;

    return-object v0
.end method
