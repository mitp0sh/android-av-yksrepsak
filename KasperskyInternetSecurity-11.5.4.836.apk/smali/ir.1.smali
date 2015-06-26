.class public final Lir;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static r:F


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:[Lis;

.field private f:[I

.field private g:I

.field private h:I

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:[[I

.field private q:I

.field private s:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lir;->r:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lir;-><init>(Landroid/content/Context;II)V

    .line 594
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-array v0, v3, [Lis;

    aput-object v4, v0, v2

    const/4 v1, 0x1

    aput-object v4, v0, v1

    iput-object v0, p0, Lir;->e:[Lis;

    .line 104
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lir;->f:[I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir;->s:Ljava/util/ArrayList;

    .line 627
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 628
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lir;->k:I

    .line 629
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lir;->l:I

    .line 632
    iput v2, p0, Lir;->a:I

    .line 633
    iget v0, p0, Lir;->k:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lir;->b:I

    .line 634
    iput v2, p0, Lir;->d:I

    .line 635
    iget v0, p0, Lir;->b:I

    iput v0, p0, Lir;->c:I

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir;->i:Ljava/util/List;

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir;->j:Ljava/util/List;

    .line 638
    iput v2, p0, Lir;->m:I

    .line 639
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lir;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 640
    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-array v0, v3, [Lis;

    aput-object v4, v0, v2

    const/4 v1, 0x1

    aput-object v4, v0, v1

    iput-object v0, p0, Lir;->e:[Lis;

    .line 104
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lir;->f:[I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir;->s:Ljava/util/ArrayList;

    .line 606
    iput p4, p0, Lir;->k:I

    .line 607
    iput p5, p0, Lir;->l:I

    .line 609
    iput v2, p0, Lir;->a:I

    .line 610
    iget v0, p0, Lir;->k:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lir;->b:I

    .line 611
    iput v2, p0, Lir;->d:I

    .line 612
    iget v0, p0, Lir;->b:I

    iput v0, p0, Lir;->c:I

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir;->i:Ljava/util/List;

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir;->j:Ljava/util/List;

    .line 615
    iput v2, p0, Lir;->m:I

    .line 616
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lir;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 617
    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static a(Landroid/content/res/TypedArray;III)I
    .locals 3

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 975
    if-nez v0, :cond_1

    .line 982
    :cond_0
    :goto_0
    return p3

    .line 976
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 977
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    .line 978
    :cond_2
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 980
    int-to-float v0, p3

    invoke-virtual {p0, p1, p2, p2, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method static synthetic a(Lir;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lir;->k:I

    return v0
.end method

.method private static a(Landroid/content/res/Resources;Lit;IILandroid/content/res/XmlResourceParser;)Lis;
    .locals 6

    .prologue
    .line 859
    new-instance v0, Lis;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lis;-><init>(Landroid/content/res/Resources;Lit;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lit;
    .locals 1

    .prologue
    .line 854
    new-instance v0, Lit;

    invoke-direct {v0, p1, p0, p2}, Lit;-><init>(Landroid/content/res/Resources;Lir;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 863
    .line 870
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v6, v0

    move v5, v2

    move v1, v2

    move v3, v2

    move v7, v2

    .line 875
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    if-eq v9, v4, :cond_a

    .line 876
    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 877
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 878
    const-string v10, "Row"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 881
    invoke-direct {p0, v8, p2}, Lir;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lit;

    move-result-object v0

    .line 882
    iget-object v1, p0, Lir;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    iget v1, v0, Lit;->g:I

    if-eqz v1, :cond_1

    iget v1, v0, Lit;->g:I

    iget v3, p0, Lir;->m:I

    if-eq v1, v3, :cond_1

    move v1, v4

    .line 884
    :goto_1
    if-eqz v1, :cond_c

    .line 885
    invoke-static {p2}, Lir;->a(Landroid/content/res/XmlResourceParser;)V

    move v1, v2

    move v3, v2

    .line 886
    goto :goto_0

    :cond_1
    move v1, v2

    .line 883
    goto :goto_1

    .line 888
    :cond_2
    const-string v10, "Key"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 890
    invoke-static {v8, v0, v1, v5, p2}, Lir;->a(Landroid/content/res/Resources;Lit;IILandroid/content/res/XmlResourceParser;)Lis;

    move-result-object v6

    .line 891
    iget-object v7, p0, Lir;->i:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    iget-object v7, v6, Lis;->a:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    const/4 v9, -0x1

    if-ne v7, v9, :cond_6

    move v7, v2

    .line 894
    :goto_2
    iget-object v9, p0, Lir;->e:[Lis;

    array-length v9, v9

    if-ge v7, v9, :cond_3

    .line 895
    iget-object v9, p0, Lir;->e:[Lis;

    aget-object v9, v9, v7

    if-nez v9, :cond_5

    .line 896
    iget-object v9, p0, Lir;->e:[Lis;

    aput-object v6, v9, v7

    .line 897
    iget-object v9, p0, Lir;->f:[I

    iget-object v10, p0, Lir;->i:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aput v10, v9, v7

    .line 901
    :cond_3
    iget-object v7, p0, Lir;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_4
    :goto_3
    iget-object v7, v0, Lit;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    goto :goto_0

    .line 894
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 902
    :cond_6
    iget-object v7, v6, Lis;->a:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    const/4 v9, -0x6

    if-ne v7, v9, :cond_4

    .line 903
    iget-object v7, p0, Lir;->j:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 925
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v5

    .line 926
    const-string v2, "Keyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parse error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 929
    :goto_4
    iget v1, p0, Lir;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Lir;->g:I

    .line 930
    return-void

    .line 906
    :cond_7
    :try_start_1
    const-string v10, "Keyboard"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 907
    invoke-direct {p0, v8, p2}, Lir;->b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 909
    :cond_8
    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 910
    if-eqz v7, :cond_9

    .line 912
    iget v7, v6, Lis;->g:I

    iget v9, v6, Lis;->e:I

    add-int/2addr v7, v9

    add-int/2addr v1, v7

    .line 913
    iget v7, p0, Lir;->h:I

    if-le v1, v7, :cond_b

    .line 914
    iput v1, p0, Lir;->h:I

    move v7, v2

    goto/16 :goto_0

    .line 916
    :cond_9
    if-eqz v3, :cond_0

    .line 918
    iget v3, v0, Lit;->d:I

    add-int/2addr v5, v3

    .line 919
    iget v3, v0, Lit;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v5, v3

    move v3, v2

    goto/16 :goto_0

    :cond_a
    move v0, v5

    .line 928
    goto :goto_4

    :cond_b
    move v7, v2

    goto/16 :goto_0

    :cond_c
    move v1, v2

    move v3, v4

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/res/XmlResourceParser;)V
    .locals 2

    .prologue
    .line 935
    :cond_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 936
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    :cond_1
    return-void
.end method

.method static synthetic b(Lir;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lir;->b:I

    return v0
.end method

.method private b(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 945
    const-string v0, "Keyboard"

    invoke-static {v0}, LiU;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 946
    array-length v1, v0

    if-lez v1, :cond_0

    .line 948
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 950
    const-string v1, "Keyboard_keyWidth"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lir;->k:I

    iget v3, p0, Lir;->k:I

    div-int/lit8 v3, v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lir;->b:I

    .line 954
    const-string v1, "Keyboard_keyHeight"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lir;->l:I

    const/16 v3, 0x32

    invoke-static {v0, v1, v2, v3}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lir;->c:I

    .line 957
    const-string v1, "Keyboard_horizontalGap"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lir;->k:I

    invoke-static {v0, v1, v2, v4}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lir;->a:I

    .line 961
    const-string v1, "Keyboard_verticalGap"

    invoke-static {v1}, LiU;->b(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lir;->l:I

    invoke-static {v0, v1, v2, v4}, Lir;->a(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lir;->d:I

    .line 965
    iget v1, p0, Lir;->b:I

    int-to-float v1, v1

    sget v2, Lir;->r:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lir;->q:I

    .line 966
    iget v1, p0, Lir;->q:I

    iget v2, p0, Lir;->q:I

    mul-int/2addr v1, v2

    iput v1, p0, Lir;->q:I

    .line 968
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 971
    :cond_0
    return-void
.end method

.method static synthetic c(Lir;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lir;->l:I

    return v0
.end method

.method static synthetic d(Lir;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lir;->c:I

    return v0
.end method

.method static synthetic e(Lir;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lir;->a:I

    return v0
.end method

.method private e()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 809
    invoke-virtual {p0}, Lir;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lir;->n:I

    .line 810
    invoke-virtual {p0}, Lir;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lir;->o:I

    .line 811
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Lir;->p:[[I

    .line 812
    iget-object v0, p0, Lir;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 813
    iget v0, p0, Lir;->n:I

    mul-int/lit8 v7, v0, 0xa

    .line 814
    iget v0, p0, Lir;->o:I

    mul-int/lit8 v8, v0, 0x5

    move v5, v2

    .line 815
    :goto_0
    if-ge v5, v7, :cond_4

    move v4, v2

    .line 816
    :goto_1
    if-ge v4, v8, :cond_3

    move v1, v2

    move v3, v2

    .line 818
    :goto_2
    iget-object v0, p0, Lir;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 819
    iget-object v0, p0, Lir;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lis;

    .line 820
    invoke-virtual {v0, v5, v4}, Lis;->b(II)I

    move-result v9

    iget v10, p0, Lir;->q:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lir;->n:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9, v4}, Lis;->b(II)I

    move-result v9

    iget v10, p0, Lir;->q:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lir;->n:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lir;->o:I

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v9, v10}, Lis;->b(II)I

    move-result v9

    iget v10, p0, Lir;->q:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lir;->o:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v5, v9}, Lis;->b(II)I

    move-result v0

    iget v9, p0, Lir;->q:I

    if-ge v0, v9, :cond_1

    .line 825
    :cond_0
    add-int/lit8 v0, v3, 0x1

    aput v1, v6, v3

    move v3, v0

    .line 818
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 828
    :cond_2
    new-array v0, v3, [I

    .line 829
    invoke-static {v6, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    iget-object v1, p0, Lir;->p:[[I

    iget v3, p0, Lir;->o:I

    div-int v3, v4, v3

    mul-int/lit8 v3, v3, 0xa

    iget v9, p0, Lir;->n:I

    div-int v9, v5, v9

    add-int/2addr v3, v9

    aput-object v0, v1, v3

    .line 816
    iget v0, p0, Lir;->o:I

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    .line 815
    :cond_3
    iget v0, p0, Lir;->n:I

    add-int/2addr v0, v5

    move v5, v0

    goto :goto_0

    .line 833
    :cond_4
    return-void
.end method

.method static synthetic f(Lir;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lir;->d:I

    return v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lir;->i:Ljava/util/List;

    return-object v0
.end method

.method public final a(II)[I
    .locals 2

    .prologue
    .line 843
    iget-object v0, p0, Lir;->p:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lir;->e()V

    .line 844
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lir;->c()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lir;->b()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 845
    iget v0, p0, Lir;->o:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lir;->n:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 846
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 847
    iget-object v1, p0, Lir;->p:[[I

    aget-object v0, v1, v0

    .line 850
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lir;->g:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lir;->h:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method
