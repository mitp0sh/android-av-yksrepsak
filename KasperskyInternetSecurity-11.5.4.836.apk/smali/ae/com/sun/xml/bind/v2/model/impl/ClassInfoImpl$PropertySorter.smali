.class final Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;
.super Ljava/util/HashMap;
.source "ClassInfoImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PropertySorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Comparator",
        "<",
        "Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private collidedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

.field used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)V
    .locals 9

    .prologue
    .line 495
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>.PropertySorter;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    .line 496
    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$100(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-direct {p0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 487
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;
    invoke-static {v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$100(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    iput-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .line 497
    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;
    invoke-static {p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$100(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 498
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 500
    iget-object v4, p1, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v5, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v6, Lae/com/sun/xml/bind/v2/model/impl/Messages;->DUPLICATE_ENTRY_IN_PROP_ORDER:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v6, v7}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 497
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 503
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;
    .param p1, "x1"    # Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->checkedGet(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I

    move-result v0

    return v0
.end method

.method private checkedGet(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I
    .locals 9
    .param p1, "p"    # Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>.PropertySorter;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 513
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 514
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 516
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->kind()Lae/com/sun/xml/bind/v2/model/core/PropertyKind;

    move-result-object v2

    iget-boolean v2, v2, Lae/com/sun/xml/bind/v2/model/core/PropertyKind;->isOrdered:Z

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->PROPERTY_MISSING_FROM_ORDER:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 521
    :cond_0
    invoke-virtual {p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 522
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 527
    .local v1, "ii":I
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 528
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    aget-object v2, v2, v1

    if-eq v2, p1, :cond_3

    .line 529
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->collidedNames:Ljava/util/Set;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->collidedNames:Ljava/util/Set;

    .line 531
    :cond_2
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->collidedNames:Ljava/util/Set;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v2, v2, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->DUPLICATE_PROPERTIES:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    aget-object v5, v5, v1

    invoke-direct {v3, v4, p1, v5}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 536
    :cond_3
    iget-object v2, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    aput-object p1, v2, v1

    .line 539
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method


# virtual methods
.method public checkUnusedProperties()V
    .locals 10

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>.PropertySorter;"
    const/4 v5, 0x0

    .line 546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 547
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->used:[Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    aget-object v4, v4, v0

    if-nez v4, :cond_0

    .line 548
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->propOrder:[Ljava/lang/String;
    invoke-static {v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$100(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v0

    .line 549
    .local v3, "unusedName":Ljava/lang/String;
    new-instance v4, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;

    invoke-direct {v4, p0}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter$1;-><init>(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;)V

    invoke-static {v3, v4}, Lae/com/sun/xml/bind/v2/util/EditDistance;->findNearest(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "nearest":Ljava/lang/String;
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;
    invoke-static {v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$200(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)Lcom/sun/istack/FinalArrayList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/istack/FinalArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v0, v4, :cond_1

    move v1, v5

    .line 559
    .local v1, "isOverriding":Z
    :goto_1
    if-nez v1, :cond_0

    .line 560
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    iget-object v4, v4, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->builder:Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    new-instance v6, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v7, Lae/com/sun/xml/bind/v2/model/impl/Messages;->PROPERTY_ORDER_CONTAINS_UNUSED_ENTRY:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v5

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {v7, v8}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    invoke-direct {v6, v7, v8}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)V

    invoke-virtual {v4, v6}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    .line 546
    .end local v1    # "isOverriding":Z
    .end local v2    # "nearest":Ljava/lang/String;
    .end local v3    # "unusedName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    .restart local v2    # "nearest":Ljava/lang/String;
    .restart local v3    # "unusedName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->this$0:Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;

    # getter for: Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->properties:Lcom/sun/istack/FinalArrayList;
    invoke-static {v4}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;->access$200(Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl;)Lcom/sun/istack/FinalArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sun/istack/FinalArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    const-class v6, Lae/com/sun/xml/bind/annotation/OverrideAnnotationOf;

    invoke-virtual {v4, v6}, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_1

    .line 564
    .end local v2    # "nearest":Ljava/lang/String;
    .end local v3    # "unusedName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public compare(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I
    .locals 3
    .param p1, "o1"    # Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;
    .param p2, "o2"    # Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .prologue
    .line 506
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>.PropertySorter;"
    invoke-direct {p0, p1}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->checkedGet(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I

    move-result v0

    .line 507
    .local v0, "lhs":I
    invoke-direct {p0, p2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->checkedGet(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I

    move-result v1

    .line 509
    .local v1, "rhs":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 483
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;, "Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl<TT;TC;TF;TM;>.PropertySorter;"
    check-cast p1, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/impl/ClassInfoImpl$PropertySorter;->compare(Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;Lae/com/sun/xml/bind/v2/model/impl/PropertyInfoImpl;)I

    move-result v0

    return v0
.end method
